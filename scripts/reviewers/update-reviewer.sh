#!/bin/bash

curl --include --request PATCH http://localhost:4741/reviewers/2 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU5MTBiZjljYTg3NzAwOTBjZWIzZTRkODFlYzMyZGJhZgY6BkVG--6b6c7bf878090ab3e0f071c5dbc7ac5e75075804" \
  --data '{
    "reviewer": {
      "username": "Minnie Mouse",
      "industry": "Tourism"
    }
  }'

  echo

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/reviewers"
  curl "${API}${URL_PATH}/${ID}" \
    --include \
    --request PATCH \
    --header "Content-Type: application/json" \
    --data '{
      "reviewer": {
        "username": "Minnie Mouse",
        "industry": "John Smith is great tipper"
      }
    }'
