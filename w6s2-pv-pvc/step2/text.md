`kubectl get pv`로 방금 만든 PV의 상태를 확인합니다.

```
kubectl get pv
```

**실행 결과 예시**

```
NAME       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM   STORAGECLASS   AGE
mysql-pv   1Gi        RWO            Retain           Available           <unset>        10s
```

STATUS가 `Available`이면, 아직 이 PV를 사용하겠다는 PVC가 없어서 대기 중인 정상 상태입니다.
