#!/bin/bash

# Check if bucket name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <bucket-name>"
    echo "Example: $0 websites-deployment-dev-static-site"
    exit 1
fi

BUCKET_NAME=$1

echo "Emptying bucket: $BUCKET_NAME"

# List all objects and delete them
aws s3 rm s3://$BUCKET_NAME --recursive

echo "Bucket emptied successfully!" 