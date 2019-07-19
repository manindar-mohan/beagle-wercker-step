#!/bin/bash
URL=https://beagle-tvm-api.appfabs.com/v1/test/start/
curl --silent --header "Content-Type: application/json" --request POST --data "{\"ACCESS_TOKEN\":\"$ACCESS_TOKEN\",\"APPLICATION_TOKEN\":\"$APPLICATION_TOKEN\"}" $URL | \
    sed -e 's/[{}]/''/g' | awk 'BEGIN { FS="\""; RS="," }; { if ($2 == "status") { print "Status : "$4} if ($2 == "message") { print "Message : "$4} }'
