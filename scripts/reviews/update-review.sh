#!/bin/bash

curl --include --request PATCH http://localhost:4741/reviews/1 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU0YmZlNjQ0OTNjN2E1MTNmZTMyM2M2ZTdmZTg3MGJmMQY6BkVG--4fd799b279b8f084d61302418f844856218fcdd1" \
  --data '{
    "review": {
      "review_date": "2017-05-02",
      "review_text": "Update Review"
    }
  }'

  "BAhJIiU0YmZlNjQ0OTNjN2E1MTNmZTMyM2M2ZTdmZTg3MGJmMQY6BkVG--4fd799b279b8f084d61302418f844856218fcdd1"

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
