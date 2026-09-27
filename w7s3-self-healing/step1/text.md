자가치유를 관찰하려면 먼저 여러 개의 Pod를 유지하는 Deployment가 있어야 합니다. 관찰용 Deployment를
하나 만듭니다. (개인 VM 실습에서도 같은 명령으로 `web` Deployment를 만들어 진행합니다.)

```
kubectl create deployment web --image=nginx --replicas=3
```

**실행 결과 예시**

```
deployment.apps/web created
```

`kubectl get pods`로 `web-...`으로 시작하는 Pod 3개가 모두 `Running` 상태가 될 때까지
기다렸다가 다음 단계로 넘어가세요.
