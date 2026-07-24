`kubectl get pv`와 `kubectl get pvc`를 실행해서 PV와 PVC가 서로 연결(Bound)되었는지 확인합니다.

```
kubectl get pvc
```

**실행 결과 예시**

```
NAME        STATUS   VOLUME     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
mysql-pvc   Bound    mysql-pv   1Gi        RWO                           5s
```

```
kubectl get pv
```

**실행 결과 예시**

```
NAME       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM               STORAGECLASS   AGE
mysql-pv   1Gi        RWO            Retain           Bound    default/mysql-pvc                  15s
```

두 명령 모두 STATUS가 **Bound**로 나오면 성공입니다. 만약 `Pending`이라면 PV와 PVC의 조건(용량,
접근 모드)이 서로 맞지 않는 경우가 대부분이니 `kubectl describe pvc mysql-pvc`로 Events를
확인해보세요.
