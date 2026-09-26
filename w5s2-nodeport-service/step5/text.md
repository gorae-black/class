`kubectl describe svc myapp`으로 Service의 상세 정보를 확인합니다.

```
kubectl describe svc myapp
```

**실행 결과 예시**

```
Name:                     myapp
Selector:                 app=myapp
Type:                     NodePort
Endpoints:                10.244.0.5:80,10.244.0.6:80
Port:                     <unset>  80/TCP
NodePort:                 <unset>  31234/TCP
```

Endpoints 항목에 Pod IP 두 개가 나열되어 있는지 확인하세요.
