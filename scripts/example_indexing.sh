#!/usr/bin/env bash

HOST_IP="192.168.11.111"
docker run -i -t --rm --name starchat_cmd -v /tmp/input_data:/input_data:ro elegansio/starchat:latest /starchat/bin/index-decision-table --inputfile /input_data/decision_table_starchat_doc.csv --host http://${HOST_IP}:8888

