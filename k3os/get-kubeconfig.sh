#!/bin/bash

scp rancher@192.168.178.234:/etc/rancher/k3s/k3s.yaml kubeconfig
sed -i s/127.0.0.1/192.168.178.234/ kubeconfig
