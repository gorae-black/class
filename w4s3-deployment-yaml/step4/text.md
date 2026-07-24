`kubectl get pods -w`의 `-w`(watch)는 결과를 한 번만 보여주고 끝내는 게 아니라, 상태가 바뀔
때마다 새 줄로 계속 보여주는 옵션입니다. Pod 2개가 만들어지는 과정을 실시간으로 지켜봅니다.

```
kubectl get pods -w
```

**실행 결과 예시**

```
NAME                     READY   STATUS              RESTARTS   AGE
myapp-6b9f8c9d4c-abcde   0/1     ContainerCreating   0          2s
myapp-6b9f8c9d4c-fghij   0/1     ContainerCreating   0          2s
myapp-6b9f8c9d4c-abcde   1/1     Running             0          6s
myapp-6b9f8c9d4c-fghij   1/1     Running             0          8s
```

Pod 이름이 방금 만든 `mypod`처럼 고정된 이름이 아니라 `myapp-{랜덤문자}` 형태로 자동 생성된
것을 눈여겨보세요 — Deployment가 대신 이름을 지어 관리하기 때문입니다. 두 Pod 모두
`ContainerCreating` → `Running`으로 바뀌고, 최종적으로 2개 모두 `1/1 Running` 상태가 되면
성공입니다. 이 명령은 스스로 끝나지 않으니, 확인이 끝나면 `Ctrl + C`로 빠져나오세요.
