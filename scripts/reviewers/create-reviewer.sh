#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviewers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU5MTBiZjljYTg3NzAwOTBjZWIzZTRkODFlYzMyZGJhZgY6BkVG--6b6c7bf878090ab3e0f071c5dbc7ac5e75075804" \
  --data '{
    "reviewer": {

      "username": "'"Mickey Mouse"'",
      "industry": "'"Tourism"'"
    }
  }'

echo
