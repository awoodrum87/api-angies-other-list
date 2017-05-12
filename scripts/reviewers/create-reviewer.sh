#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviewers"
TOKEN="BAhJIiU1NWI5ZmQzOThkZWUyYTA5MzFjMDJjNTM0NmE3YzA5YQY6BkVG--19e65a09673ed2c1420f1934eb93f4126b1d707b"
USERNAME="server"
INDUSTRY="brunch"

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/reviewers"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "reviewer": {
        "username": "'"${USERNAME}"'",
        "industry": "'"${INDUSTRY}"'"
      }
    }'
echo
