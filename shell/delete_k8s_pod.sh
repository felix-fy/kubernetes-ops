#!/bin/bash
NAME_SPACES=$1
POD_NAME=$2

for ALL_POD_NAME in `kubectl get all -n ${NAME_SPACES} |grep pod |grep ${POD_NAME} |awk '{print $1}' |awk -F "/" '{print $2}'`;do
	kubectl delete -n ${NAME_SPACES} pod/$ALL_POD_NAME
done
