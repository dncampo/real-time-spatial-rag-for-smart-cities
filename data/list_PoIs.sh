#!/bin/bash

curl -iX GET 'http://localhost:1026/ngsi-ld/v1/entities?type=PoI&count=true&format=concise' -H "fiware-service: ld" -H "fiware-service: ld"
