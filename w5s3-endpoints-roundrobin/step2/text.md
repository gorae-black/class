`kubectl get endpoints myapp`을 치면 지금 이 순간 `myapp` Service에 실제로 연결되어 있는 Pod IP
목록을 그대로 볼 수 있습니다. Pod가 새로 추가되거나 삭제될 때마다 이 목록도 자동으로 갱신됩니다.

```
kubectl get endpoints myapp
```

**실행 결과 예시**

```
NAME    ENDPOINTS                       AGE
myapp   10.244.0.5:80,10.244.0.6:80     30s
```

`ENDPOINTS` 칸에 Pod IP 2개가 콤마로 구분되어 나열되어 있습니다. 이게 바로 Service의 '연결 장부' —
지금 이 Service 뒤에 실제로 연결된 Pod가 정확히 몇 개, 어느 IP인지 보여줍니다.
