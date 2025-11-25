#!/bin/bash

for i in {1..234}
do
  echo "[$i/234] Deleting Luminaries entities..."
  
  curl -X DELETE \
    'http://localhost:1026/ngsi-ld/v1/entities?type=Luminaries&limit=1000' \
    -H "fiware-service: ld"
done

