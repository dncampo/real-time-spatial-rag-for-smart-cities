#!/bin/bash

for i in {1..3}
do
  echo "[$i/3] Deleting TrafficLightSignal entities..."
  
  curl -X DELETE \
    'http://localhost:1026/ngsi-ld/v1/entities?type=TrafficLightSignal&limit=1000' \
    -H "fiware-service: ld"
done

