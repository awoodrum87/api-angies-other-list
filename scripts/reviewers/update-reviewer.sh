#!/bin/bash

curl --include --request PATCH http://localhost:4741/reviewers/22 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUxZjdlZTk4ZTJhODAxYzU4ZGE2ZTc1YjNlOTkwMDNjZgY6BkVG--868add2f815ad31a955de94ee824c4603f75d86e" \
  --data '{
    "reviewer": {
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
