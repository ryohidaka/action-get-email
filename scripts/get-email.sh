#!/bin/bash

set -euo pipefail

# --- Constants ---
USERNAME="$1"
TOKEN="$2"

# --- Main ---
echo "::group::Get Email"

# Fetch GitHub user data using the API
USER_DATA=$(curl -s -H "Authorization: token $TOKEN" \
	"https://api.github.com/users/$USERNAME")

# Extract the email field from the JSON
EMAIL=$(echo "$USER_DATA" | jq -r '.email')

# If email is null or empty, fallback to noreply format
if [ "$EMAIL" == "null" ] || [ -z "$EMAIL" ]; then
	USER_ID=$(echo "$USER_DATA" | jq -r '.id')
	EMAIL="${USER_ID}+${USERNAME}@users.noreply.github.com"
fi

# Output the email so it can be used as an output in the action
echo "email=$EMAIL" >>"$GITHUB_OUTPUT"

echo "::endgroup::"
