#!/bin/bash

curl --include --request PATCH http://localhost:4741/reviews/1 \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "review_date": "2017-04-27",
      "review_text": "John Smith is a great tipper"
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
