#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviewers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUwZGRhMDk5OTI5YmM0Zjk5MDE1YWNhYTQ5MDVmZjRhZAY6BkVG--08d60a4a137dc5199595245007dfd2575200d7cf" \
  --data '{
    "reviewer": {

      "username": "'"Daisy Duck"'",
      "industry": "'"Restaurant"'"
    }
  }'

echo
