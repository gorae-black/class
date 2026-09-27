새 컨테이너를 만들고 MySQL 프로세스가 초기화되는 데 **10~20초 정도** 걸립니다. 너무 빨리 접속을
시도하면 아직 컨테이너가 준비되지 않아서 오류가 날 수 있으니, `kubectl get pods`로 상태를
확인하면서 기다려주세요.

```
kubectl get pods
```

**실행 결과 예시**

```
NAME                    READY   STATUS    RESTARTS   AGE
mysql-7d9c6d8f45-k8m2p  1/1     Running   0          15s
```

새로 생긴 Pod의 이름(이전 단계와 다른 이름)이 보이고, STATUS가 `Running`, READY가 `1/1`이 되면
다음 단계로 진행하세요.
