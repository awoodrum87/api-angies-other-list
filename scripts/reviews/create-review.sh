#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjZWM3MjZmMmMzZTRlOWNkZTVhYmJhYjdmYmJiYzEyNwY6BkVG--a72ca5d0776ee1f7a2e9fc26534f57d6ff050d78" \
  --data '{
    "review": {
      "reviewer_id": "14",
      "review_date": "02-05-2017",
      "review_text": "10:44 curl request"
    }
  }'

echo

# "Authorization: Token token=BAhJIiUwZTQ0NGY5ODFiZDNiOTAyMmQzN2UyMzllOGM4MzI0ZQY6BkVG--948ab1a8a3481c0d54a1bb852bbb8f05aad5b162" \
