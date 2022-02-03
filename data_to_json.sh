#!/bin/bash
set -e

echo "Generating cnpj.json"
sqlite3 dados-publicos/cnpj.db < sqlite_to_json.sql

echo "Removing undesirable characters from cnpj.json"
sed -i "s/\[//g; s/\]//g; s/},/}/g" cnpj.json
