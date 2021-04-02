# kubernetes

## Master
```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/kubernetes/main/master.sh)
```

## Node
```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/kubernetes/main/node.sh)
```

## cupidcome-deployment
```
kubectl apply -f https://raw.githubusercontent.com/bidianqing/installer/kubernetes/main/cupidcome-deployment.yaml
```

## cupidcome-service
```
kubectl apply -f https://raw.githubusercontent.com/bidianqing/installer/kubernetes/main/cupidcome-service.yaml
```