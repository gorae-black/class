Pod 하나를 삭제하고, Endpoints가 새 Pod IP로 자동 갱신되는지 확인해보겠습니다.

```
kubectl delete pod {파드 이름 중 하나}
kubectl get endpoints myapp
```

Pod IP 하나가 이전과 달라져 있어도 ENDPOINTS 개수는 여전히 2개인지 확인하세요. Service가 자동으로
새 Pod를 찾아 연결했다는 뜻입니다.
