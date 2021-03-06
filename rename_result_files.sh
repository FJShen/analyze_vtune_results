#!/bin/bash

DIR_NAME="2021_8_19"

for file in extracted_reports/${DIR_NAME}/q*/result.csv/*.csv; do 
    echo $file
    query_name="q"$(echo "$file" | sed -E 's|extracted_reports/2021_8_19/q([0-9]+).*|\1|')
    result_path=$(echo "$file" | sed -E 's|(extracted_reports/2021_8_19/q[0-9]+/result.csv/).*|\1|')
    echo $query_name
    echo $result_path
    mv $file ${result_path}${query_name}.csv 
done