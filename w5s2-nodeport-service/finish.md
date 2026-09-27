여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 VM에서 `minikube start` 후 `kubectl get deployment myapp`으로 Deployment가 떠 있는지
확인하고, 같은 명령어(`kubectl expose deployment myapp --type=NodePort --port=80`,
`kubectl get svc myapp`)를 동일하게 실행하세요. minikube는 localhost로 접속되지 않으므로
`minikube service myapp --url`로 접속 URL을 확인하고, `curl $(minikube service myapp --url)`로
접속한 뒤 `kubectl describe svc myapp`으로 Endpoints까지 확인해보세요.
