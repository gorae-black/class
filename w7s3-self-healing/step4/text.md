`kubectl get all`로 지금까지 만든 리소스를 한 번에 확인합니다.

```
kubectl get all
```

**실행 결과 예시**

```
NAME                          READY   STATUS    RESTARTS   AGE
pod/web-6f9b8c7d5-bbbbb       1/1     Running   0          5m
pod/web-6f9b8c7d5-ccccc       1/1     Running   0          5m
pod/web-6f9b8c7d5-ddddd       1/1     Running   0          2m

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   30m

NAME                  READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/web   3/3     3            3           5m

NAME                             DESIRED   CURRENT   READY   AGE
replicaset.apps/web-6f9b8c7d5    3         3         3       5m
```

pod, deployment.apps, replicaset.apps가 함께 보이면, 4주차부터 배운 리소스들이 어떻게 연결되어
있는지 한눈에 정리됩니다. `service/kubernetes`는 클러스터가 처음부터 만들어 두는 기본 Service입니다.
