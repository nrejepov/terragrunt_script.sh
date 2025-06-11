#!/bin/bash

# Replace Resource Group Name
find "/src/terraformlab" -name "*.tf" | xargs sed -i "s/REPLACEME/$2/g"
find "/src/terraformlab" -name "*.hcl" | xargs sed -i "s/REPLACEME/$2/g"
find "/src/terraformlab" -name "*.yaml" | xargs sed -i "s/REPLACEME/$2/g"

# Replace Storage Account Name
find "/src/terraformlab" -name "*.hcl" | xargs sed -i "s/STORAGEACCOUNT/$3/g"

exec tail -f /dev/null
