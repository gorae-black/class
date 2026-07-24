`kubectl get pods`로 지금 떠 있는 Pod 목록과 상태를 확인합니다.

```
kubectl get pods
```

**실행 결과 예시**

```
NAME     READY   STATUS    RESTARTS   AGE
mypod    1/1     Running   0          10s
```

STATUS가 `Running`이면 정상입니다. 만약 방금 실행한 직후라 `ContainerCreating`처럼 아직 준비 중인
상태로 보인다면, 몇 초 기다렸다가 같은 명령어를 다시 실행해보세요 — 이미지를 받아오는 중이라 그런
것이니 안 됐다고 오해하지 않아도 됩니다.
