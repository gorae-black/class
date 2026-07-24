`kubectl get pods -w`의 `-w`는 watch, 즉 Pod 상태가 바뀔 때마다 화면에 계속 출력해주는
옵션입니다. 명령 끝에 `&`를 붙이면 이 감시를 백그라운드로 돌리면서 같은 터미널에서 계속 다른
명령을 입력할 수 있습니다.

```
kubectl get pods -w &
```

**실행 결과 예시**

```
[1] 1234
NAME                   READY   STATUS    RESTARTS   AGE
web-6f9b8c7d5-aaaaa    1/1     Running   0          2m
web-6f9b8c7d5-bbbbb    1/1     Running   0          2m
web-6f9b8c7d5-ccccc    1/1     Running   0          2m
```

`[1] 1234`처럼 백그라운드 작업 번호가 나오고, 현재 Pod 3개의 상태가 한 번 출력되면 정상입니다.
이제 이 창은 그대로 두고, 같은 터미널에서 다음 단계의 명령어를 이어서 입력하면 됩니다.
