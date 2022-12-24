#!/bin/bash

echo 'criando deployment.......'
kubectl apply -f ./mysql-deployment.yml
kubectl apply -f ./app-deployment.yml


echo 'criando secrets....'

kubectl apply -f /secrets.yml

echo 'criando load balance....'

kubectl apply -f ./load-balancer.yml


echo 'criando persistent volume...'

kubectl apply -f ./pv.yml
