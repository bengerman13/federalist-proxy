#!/bin/bash

set -e

cf api $CF_API
cf auth

cf t -o $CF_ORG -s $CF_SPACE

cf push $CF_APP_NAME -f $CF_MANIFEST --strategy rolling --vars-file $CF_VARS_FILE