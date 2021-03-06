kubectl --namespace=lava delete service lava-kci
kubectl create -f deployments/lava-kci.yaml --record
kubectl expose --namespace=lava -f deployments/lava-kci.yaml --port=9001 --target-port=80 --external-ip="192.168.1.2"
