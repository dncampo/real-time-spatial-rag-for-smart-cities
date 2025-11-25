#!/bin/bash

curl -iX GET 'http://localhost:1026/ngsi-ld/v1/entities?type=TrafficLightSignal&count=true&format=concise' -H "fiware-service: ld"

