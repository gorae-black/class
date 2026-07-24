여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 VM에서 같은 명령어(`kubectl expose deployment myapp --type=NodePort --port=80`,
`kubectl get svc myapp`)를 동일하게 실행하세요. `minikube service myapp --url`로 접속 URL을
확인하고, curl로 접속한 결과를 캡처해서 LMS 과제 게시판에 제출해주세요.

**다음 차시 예고**: 3차시에서는 Service가 실제로 어떤 Pod들과 연결되어 있는지 Endpoints로
확인하고, 여러 Pod로 트래픽이 고르게 나뉘어 전달되는 라운드로빈을 직접 확인해봅니다.
