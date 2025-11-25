#!/bin/bash
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

#insert 1088 PoIs
for j in 0
do
  FILE="${SCRIPTPATH}/POI/generated_GPT4o_Madrid.json"
  echo "Uploading $FILE ..."

  curl --location 'http://localhost:1026/ngsi-ld/v1/entityOperations/upsert' \
    --header 'Content-Type: application/json' \
    -H 'Link: <http://context/ngsi-context.jsonld>; rel="http://www.w3.org/ns/json-ld#context"; type="application/ld+json"' \
    -H 'Accept: application/ld+json' \
    -H 'fiware-service: ld' \
    -d @"${FILE}"

  echo
done
