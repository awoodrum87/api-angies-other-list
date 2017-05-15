#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
TOKEN="BAhJIiUyZDIxY2RkYWEzY2MxY2U1MDg1NTc3Nzg2ODllYjViZQY6BkVG--7c77c92f6dab9bc9a2b6ee4690a33f35f0aa1464"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/your-reviews"
TOKEN="BAhJIiUyZDIxY2RkYWEzY2MxY2U1MDg1NTc3Nzg2ODllYjViZQY6BkVG--7c77c92f6dab9bc9a2b6ee4690a33f35f0aa1464"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
