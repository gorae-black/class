kube-system 네임스페이스에서 Control Plane 컴포넌트들을 Pod로 확인해보겠습니다.

```
kubectl get pods -n kube-system
```

etcd, kube-apiserver 같은 이름의 Pod가 보이면 정상입니다.
