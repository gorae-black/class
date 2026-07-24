강의에서는 개인 VM(minikube) 기준으로 `minikube addons enable ingress` 한 줄이면 Ingress
컨트롤러가 켜집니다. 이 Killercoda 환경은 minikube가 아니라 **실제 kubeadm 클러스터**이므로,
같은 역할을 하는 ingress-nginx 컨트롤러를 매니페스트로 직접 설치합니다. 컨트롤러 자체(무엇을
켜는지)는 강의에서 배운 것과 동일합니다.

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.3/deploy/static/provider/baremetal/deploy.yaml
```

**실행 결과 예시**

```
namespace/ingress-nginx created
serviceaccount/ingress-nginx created
...
deployment.apps/ingress-nginx-controller created
```

여러 리소스(Namespace, ServiceAccount, ConfigMap, Deployment 등)가 한 번에 생성되었다는 메시지가
쭉 나오면 정상입니다. 컨트롤러 Pod가 실제로 뜨기까지는 시간이 좀 걸리니, 다음 단계에서 상태를
확인하겠습니다.
