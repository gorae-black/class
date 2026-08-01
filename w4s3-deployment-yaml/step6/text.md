Pod 개수를 4개로 늘려보겠습니다.

```
kubectl scale deployment myapp --replicas=4
kubectl get pods
```

Pod 4개가 모두 Running인지 확인한 뒤, 다시 2개로 줄여보겠습니다.

```
kubectl scale deployment myapp --replicas=2
kubectl get pods
```

Pod 2개는 유지되고 나머지 2개는 Terminating으로 사라지는지 확인하세요.
