`kubectl get pods`로 두 Pod의 이름을 확인한 뒤, 각각 `kubectl logs`로 로그를 확인해보겠습니다.

```
kubectl get pods
kubectl logs {첫 번째 파드 이름}
kubectl logs {두 번째 파드 이름}
```

**실행 결과 예시**

```
NAME                     READY   STATUS    RESTARTS   AGE
myapp-7d9f8c6b5d-abcde   1/1     Running   0          2m
myapp-7d9f8c6b5d-fghij   1/1     Running   0          2m

10.244.0.1 - - [24/Jul/2026:10:00:01 +0000] "GET / HTTP/1.1" 200 615 "-" "curl/7.88.1"
10.244.0.1 - - [24/Jul/2026:10:00:02 +0000] "GET / HTTP/1.1" 200 615 "-" "curl/7.88.1"
...
```

두 Pod의 로그를 각각 확인하면, 방금 보낸 10번의 요청이 두 Pod에 나뉘어 기록되어 있는 것을 볼 수
있습니다 (한 Pod에만 몰리지 않고 번갈아가며 기록됨). 이것이 Service가 여러 Pod에 요청을
라운드로빈 방식으로 고르게 분산한다는 증거입니다.
