#!/bin/bash

for i in {1..2}
do
  echo "[$i/2] Deleting PoIs entities..."
  
  curl -X DELETE \
    'http://localhost:1026/ngsi-ld/v1/entities?type=PoI&limit=1000' \
    -H "fiware-service: ld"
done

