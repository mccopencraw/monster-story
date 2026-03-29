#!/bin/bash

# Cloudflare Pages Direct Deployment Script
# Usage: ./deploy.sh <api_token> <account_id>

API_TOKEN="${CLOUDFLARE_API_TOKEN:-$1}"
PROJECT_NAME="monster-story"
BRANCH="main"
DIR="./dist"

if [ -z "$API_TOKEN" ]; then
    echo "Usage: CLOUDFLARE_API_TOKEN=xxx ./deploy.sh"
    echo "Or: ./deploy.sh <api_token>"
    exit 1
fi

# Get account ID from API token
ACCOUNT_RESPONSE=$(curl -s -X GET "https://api.cloudflare.com/client/v4/user/tokens/verify" \
    -H "Authorization: Bearer $API_TOKEN" \
    -H "Content-Type: application/json")

echo "Testing API token..."
echo "$ACCOUNT_RESPONSE" | head -20

