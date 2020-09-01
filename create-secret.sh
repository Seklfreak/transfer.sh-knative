#!/usr/bin/env bash

# ./create-secret.sh [AWS Access Key] [AWS Secret Key] [Bucket] [S3 Endpoint] [S3 Region] [HTTP Auth User] [HTTP Auth Pass]

kubectl -n default create secret generic transfer-sh \
  --from-literal=AWS_ACCESS_KEY=$1 \
  --from-literal=AWS_SECRET_KEY=$2 \
  --from-literal=BUCKET=$3 \
  --from-literal=S3_ENDPOINT=$4 \
  --from-literal=S3_REGION=$5 \
  --from-literal=HTTP_AUTH_USER=$6 \
  --from-literal=HTTP_AUTH_PASS=$7
