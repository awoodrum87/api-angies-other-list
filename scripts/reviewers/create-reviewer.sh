#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviewers"
TOKEN="BAhJIiUxNzg2NTEzZjM3YmNjYzA2YzkwMTliNDhlNjY3NzQ3OAY6BkVG--7cdafa716247ad81979d955caf391567bb26c423"
USERNAME="user_testname"
INDUSTRY="car sales"

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
