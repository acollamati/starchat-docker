#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-'index_getjenny_english_0'}
FILENAME=${3:-"$(readlink -e ./decision_table_starchat_doc.csv)"}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
 -X POST --form "csv=@${FILENAME}" http://localhost:${PORT}/${INDEX_NAME}/decisiontable/upload/csv
