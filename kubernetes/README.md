# kubernetes

## Master
```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/kubernetes/master.sh)
```

## Node
```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/kubernetes/node.sh)
```

## cupidcome-deployment
```
kubectl apply -f https://raw.githubusercontent.com/bidianqing/installer/main/kubernetes/cupidcome-deployment.yaml
```

## cupidcome-service
```
kubectl apply -f https://raw.githubusercontent.com/bidianqing/installer/main/kubernetes/cupidcome-service.yaml
```