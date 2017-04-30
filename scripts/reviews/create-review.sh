#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUwZTQ0NGY5ODFiZDNiOTAyMmQzN2UyMzllOGM4MzI0ZQY6BkVG--948ab1a8a3481c0d54a1bb852bbb8f05aad5b162" \
  --data '{
    "review": {
      "reviewer_id": "1",
      "review_date": "30-04-2017",
      "review_text": "1:28 pm attempt at curl request"
    }
  }'

echo

# "Authorization: Token token=BAhJIiUwZTQ0NGY5ODFiZDNiOTAyMmQzN2UyMzllOGM4MzI0ZQY6BkVG--948ab1a8a3481c0d54a1bb852bbb8f05aad5b162" \
