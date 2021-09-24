#!/bin/bash
kind create cluster --name k8s --config clusterconfig.yaml
kubectl cluster-info --context kind-k8s
kubectl create clusterrolebinding add-on-cluster-admin --clusterrole=cluster-admin --serviceaccount=kube-system:default
