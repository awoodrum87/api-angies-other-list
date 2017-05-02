#!/bin/bash

curl --include --request PATCH http://localhost:4741/reviews/10 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjZWM3MjZmMmMzZTRlOWNkZTVhYmJhYjdmYmJiYzEyNwY6BkVG--a72ca5d0776ee1f7a2e9fc26534f57d6ff050d78" \
  --data '{
    "review": {
      "review_date": "2017-05-02",
      "review_text": "Update Review"
    }
  }'

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/reviews"
  curl "${API}${URL_PATH}/${ID}" \
    --include \
    --request PATCH \
    --header "Content-Type: application/json" \
    --data '{
      "review": {
        "review_date": "27-04-2017",
        "review_text": "John Smith is great tipper"
      }
    }'
echo
