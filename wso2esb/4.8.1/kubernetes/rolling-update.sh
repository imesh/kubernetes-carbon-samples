#!/bin/bash

kubectl rolling-update --update-period=5s wso2esb-worker wso2esb-worker-v2 --image=imesh/wso2esb:4.8.1
