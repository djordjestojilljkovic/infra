#!/bin/bash

if [ -z "$1" ]
  then
    echo "You must pass first argument to define cluster name."
    exit 1
fi

if [ -z "$2" ]
  then
    echo "You must pass second argument to define region (us-east-1/us-east-2)"
    exit 1
fi

# Create AWS Cluster
ecs-cli configure --cluster $1 --default-launch-type FARGATE --config-name $1 --region $2
ecs-cli up --cluster-config $1
