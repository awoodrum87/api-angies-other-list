#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviewers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjZWM3MjZmMmMzZTRlOWNkZTVhYmJhYjdmYmJiYzEyNwY6BkVG--a72ca5d0776ee1f7a2e9fc26534f57d6ff050d78" \
  --data '{
    "reviewer": {

      "username": "'"Daisy Duck"'",
      "industry": "'"Restaurant"'"
    }
  }'

echo
