[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)
# Angie's Other List API Documentation
[Link to Heroku App](https://git.heroku.com/angies-other-list.git
)
# Database structure
[Link to ERD](https://goo.gl/photos/iDN9jtu21tM6BFPGA)
- 3 tables
  - Users, Reviewers, Reviews
- Users
```
class User < ApplicationRecord
  include Authentication
  has_one :reviewer
  has_many :reviews, through: :reviewer
end
```
- Reviewers
```
class Reviewer < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :username, presence: true
  validates :industry, presence: true

end
```
- Reviews
```
class Review < ApplicationRecord
  belongs_to :reviewer
  validates :review_date, presence: true
  validates :review_text, presence: true
end
```

# Routes
Users

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

Reviewers

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/reviewers`           | `reviewers#create`|
| PATCH  | `/reviewers/:id`       | `reviewers#update`|

Note: Per design specs, only `industry` can be PATCHED

| Verb   | URI Pattern            | Controller#Action      |
|--------|------------------------|----------------------- |
| POST   | `/reviews`             | `reviews#create`       |
| PATCH  | `/reviews/:id`         | `reviews#update`       |
| DELETE | `/reviews/:id`         | `reviews#destroy`      |
| GET    | `/reviews/`            | `reviews#index`        |
| GET    | `/reviews/:id`         | `reviews#your-reviews` |

# Challenges
Coding the controllers was particularly challenging.

Coding the create reviewer so that there was an error thrown if a reviewer profile had been created was really challenging.
```
def create
  if current_user.reviewer.nil?
    @reviewer = current_user.build_reviewer(reviewer_params)
    if @reviewer.save
      render json: @reviewer, status: :created
    else
      render json: @reviewer.errors, status: :unprocessable_entity
    end
  else
    :unprocessable_entity
  end
end
```

The create reviews controller was also really (really, really) hard because the review could not be tied to just the current_user, but rather the reviewer tied to the current_user.
```
def create
  @review = current_user.reviewer.reviews.build(review_params)
  if @review.save
    render json: @review, status: :created
  else
    render json: @review.errors, status: :unprocessable_entity
  end
end
```

# Accomplishments
Nailing the the controller and the error handling are particular points of pride with the API code.

# Backlog for future releases
TBD

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
