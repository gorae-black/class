MySQL은 시작할 때 내부적으로 초기화 작업을 하기 때문에 nginx 같은 가벼운 이미지보다 시간이 조금
더 걸립니다. `kubectl get pods`로 STATUS가 `Running`이 될 때까지 확인합니다.

```
kubectl get pods
```

**실행 결과 예시**

```
NAME                    READY   STATUS    RESTARTS   AGE
mysql-7d9c6d8f45-x2n7q  1/1     Running   0          40s
```

STATUS가 `Running`이고 READY가 `1/1`이 되면 다음 단계로 진행하세요. (Pod 이름의 뒤쪽 문자열은
매번 랜덤하게 생성되므로, 실제 화면에 나온 이름을 이후 명령어에 그대로 사용하세요.)
