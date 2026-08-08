이 Killercoda 환경은 세션을 새로 시작할 때마다 깨끗한 상태로 초기화되므로, 지난 1차시에 설치했던
Ingress 컨트롤러를 다시 설치합니다. (개인 VM 실습에서는 `minikube addons enable
ingress` 한 줄이면 되지만, 이 환경은 실제 kubeadm 클러스터이므로 매니페스트로 직접 설치합니다.)

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.3/deploy/static/provider/baremetal/deploy.yaml
```

컨트롤러 Pod가 준비될 때까지 잠시 기다린 후, 아래 명령으로 STATUS가 `Running`인지 확인하세요.

```
kubectl get pods -n ingress-nginx
```

**실행 결과 예시**

```
NAME                                        READY   STATUS      RESTARTS   AGE
ingress-nginx-controller-7d9f8c6b5d-abcde   1/1     Running     0          45s
```

`ingress-nginx-controller-...` Pod가 `Running`이 되면 다음 단계로 넘어갑니다.
