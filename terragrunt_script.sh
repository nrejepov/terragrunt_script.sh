#!/bin/bash

# Replace Resource Group Name
find "/src/terraformlab" -name "*.tf" | xargs sed -i "s/REPLACEME/$resource_group/g"
find "/src/terraformlab" -name "*.hcl" | xargs sed -i "s/REPLACEME/$resource_group/g"
find "/src/terraformlab" -name "*.yaml" | xargs sed -i "s/REPLACEME/$resource_group/g"

# Replace Storage Account Name
find "/cloudacademy" -name "*.hcl" | xargs sed -i "s/STORAGEACCOUNT/$sa/g"

exec tail -f /dev/null
