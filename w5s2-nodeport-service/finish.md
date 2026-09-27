여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 VM에서 `minikube start` 후 `kubectl get deployment myapp`으로 Deployment가 떠 있는지
확인하고, 같은 명령어(`kubectl expose deployment myapp --type=NodePort --port=80`,
`kubectl get svc myapp`)를 동일하게 실행하세요. minikube는 localhost로 접속되지 않으므로
`minikube service myapp --url`로 접속 URL을 확인하고, `curl $(minikube service myapp --url)`로
접속한 뒤 `kubectl describe svc myapp`으로 Endpoints까지 확인해보세요.

**제출**: Killercoda 또는 개인 VM 중 실습한 환경의 실행 결과를 캡처해서 LMS 과제 게시판에 제출하세요.

- **Killercoda**: ① `kubectl get svc myapp`으로 확인한 NodePort 번호 ② `curl localhost:{NodePort 번호}`로
  접속한 결과(nginx 환영 페이지 HTML)
- **개인 VM**: ① `minikube service myapp --url`로 확인한 URL ② 그 URL로 curl 접속한 결과(nginx 환영
  페이지 HTML)
