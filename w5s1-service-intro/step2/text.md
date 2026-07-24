`kubectl get pods -o wide`로 Pod 목록과 각 Pod의 IP를 확인합니다. `-o wide` 옵션을 붙이면 IP,
NODE 같은 추가 정보까지 함께 볼 수 있습니다.

```
kubectl get pods -o wide
```

**실행 결과 예시**

```
NAME                     READY   STATUS    RESTARTS   AGE   IP           NODE
myapp-7d9f8c6b5d-abcde   1/1     Running   0          20s   10.244.0.5   controlplane
myapp-7d9f8c6b5d-fghij   1/1     Running   0          20s   10.244.0.6   controlplane
```

Pod 이름이 다른 건 물론이고, IP 주소(`10.244.0.5`, `10.244.0.6`)도 서로 다릅니다. Pod가 2개이니
어느 IP로 접속해야 할지도 애매합니다.
