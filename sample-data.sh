#!/bin/bash

echo -ne \\nWaiting for Kibana...
until curl -s http://localhost:5601/login -o /dev/null; do
    echo -ne .
    sleep 1
done

echo -ne \\nInserting Testdata \'ecommerce\'...
until curl -s 'http://localhost:5601/api/sample_data/ecommerce' -X POST -H 'Sec-Fetch-Mode: cors' -H 'Referer: http://localhost:5601/app/kibana' -H 'DNT: 1' -H 'kbn-version: 7.3.0' -H 'Content-Type: application/json' --compressed -o /dev/null; do
    echo -ne .
    sleep 1
done

echo -ne \\nInserting Testdata \'flights\'...
until curl -s 'http://localhost:5601/api/sample_data/flights' -X POST -H 'Sec-Fetch-Mode: cors' -H 'Referer: http://localhost:5601/app/kibana' -H 'DNT: 1' -H 'kbn-version: 7.3.0' -H 'Content-Type: application/json' --compressed -o /dev/null; do
    echo -ne .
    sleep 1
done

echo -ne \\nInserting Testdata \'logs\'...
until curl -s 'http://localhost:5601/api/sample_data/logs' -X POST -H 'Sec-Fetch-Mode: cors' -H 'Referer: http://localhost:5601/app/kibana' -H 'DNT: 1' -H 'kbn-version: 7.3.0' -H 'Content-Type: application/json' --compressed -o /dev/null; do
    echo -ne .
    sleep 1
done

echo -ne \\nDone\\n
