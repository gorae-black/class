`kubectl get pods -n ingress-nginx`로 방금 설치한 컨트롤러 Pod가 정상적으로 떠 있는지
확인합니다. (`-n`은 namespace를 지정하는 옵션으로, ingress-nginx는 별도의 namespace에
설치됩니다.)

```
kubectl get pods -n ingress-nginx
```

**실행 결과 예시**

```
NAME                                        READY   STATUS      RESTARTS   AGE
ingress-nginx-admission-create-xxxxx        0/1     Completed   0          40s
ingress-nginx-admission-patch-xxxxx         0/1     Completed   0          40s
ingress-nginx-controller-7d9f8c6b5d-abcde   1/1     Running     0          40s
```

`ingress-nginx-controller-...` Pod의 STATUS가 `Running`이면 성공입니다. 아직 `ContainerCreating`
이라면 몇십 초 기다렸다가 같은 명령을 다시 실행해보세요. `admission-create`, `admission-patch`
Pod는 설치 과정에서 한 번 실행되고 끝나는 Job이라 STATUS가 `Completed`인 것이 정상입니다.
