`kubectl get pods -o wide`를 다시 실행해서, 새로 생긴 Pod의 IP를 이전과 비교해보겠습니다.

```
kubectl get pods -o wide
```

**실행 결과 예시**

```
NAME                     READY   STATUS    RESTARTS   AGE   IP           NODE
myapp-7d9f8c6b5d-fghij   1/1     Running   0          90s   10.244.0.6   controlplane
myapp-7d9f8c6b5d-klmno   1/1     Running   0          10s   10.244.0.7   controlplane
```

새로 생긴 Pod(`myapp-7d9f8c6b5d-klmno`)의 IP(`10.244.0.7`)가 방금 지운 Pod의 IP(`10.244.0.5`)와
다른 것을 확인하세요. Pod가 재생성될 때마다 IP가 이렇게 바뀌기 때문에, Pod IP를 직접 외우거나
코드에 박아두면 안 됩니다. 이 문제를 해결하는 것이 다음 시간에 배울 Service입니다.
