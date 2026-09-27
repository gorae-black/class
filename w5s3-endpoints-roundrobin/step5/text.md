Pod 하나를 삭제하고, Endpoints가 새 Pod IP로 자동 갱신되는지 확인해보겠습니다.

```
kubectl delete pod {파드 이름 중 하나}
kubectl get endpoints myapp
```

**실행 결과 예시**

```
pod "myapp-7d9f8c6b5d-abcde" deleted from default namespace
Warning: v1 Endpoints is deprecated in v1.33+; use discovery.k8s.io/v1 EndpointSlice
NAME    ENDPOINTS                       AGE
myapp   10.244.0.6:80,10.244.0.8:80     3m
```

Pod IP 하나가 이전과 달라져 있어도 ENDPOINTS 개수는 여전히 2개인지 확인하세요. Service가 자동으로
새 Pod를 찾아 연결했다는 뜻입니다.
