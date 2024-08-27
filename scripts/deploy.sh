#!/bin/bash

# Parameters
RESOURCE_GROUP=$1
TEMPLATE_FILE=$2
PARAMETERS_FILE=$3

# Deploy ARM Template
az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --template-file $TEMPLATE_FILE \
  --parameters $PARAMETERS_FILE
