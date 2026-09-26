`kubectl describe svc myapp`으로 Service의 상세 정보를 확인합니다.

```
kubectl describe svc myapp
```

**실행 결과 예시**

```
Name:                     myapp
Namespace:                default
Labels:                   app=myapp
Annotations:              <none>
Selector:                 app=myapp
Type:                     NodePort
IP Family Policy:         SingleStack
IP Families:              IPv4
IP:                       10.96.123.45
IPs:                      10.96.123.45
Port:                     <unset>  80/TCP
TargetPort:               80/TCP
NodePort:                 <unset>  31234/TCP
Endpoints:                10.244.0.5:80,10.244.0.6:80
Session Affinity:         None
External Traffic Policy:  Cluster
Internal Traffic Policy:  Cluster
Events:                   <none>
```

Endpoints 항목에 Pod IP 두 개가 나열되어 있는지 확인하세요.
