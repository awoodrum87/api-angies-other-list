#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "reviewer_id": "2",
      "review_date": "28-04-2017",
      "review_text": "Daisy eats all of her food then complains so she gets free food"
    }
  }'

echo

# "Authorization: Token token=BAhJIiU5MTBiZjljYTg3NzAwOTBjZWIzZTRkODFlYzMyZGJhZgY6BkVG--6b6c7bf878090ab3e0f071c5dbc7ac5e75075804" \
