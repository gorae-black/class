여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다! 오늘로 5주차가 모두 끝났습니다.

**다음 순서**

개인 VM에서 `minikube start` 후 `myapp` Deployment와 Service가 떠 있는지 확인하고,
`kubectl get endpoints myapp`, 반복 curl(`for i in $(seq 1 10); do curl $(minikube service myapp --url); done`),
`kubectl logs`로 두 Pod의 로그 확인까지 동일하게 실행해보세요.

**다음 주 예고**: 6주차에서는 설정값과 비밀번호를 코드에서 분리해서 관리하는 ConfigMap과 Secret,
그리고 데이터를 영구적으로 저장하는 PV/PVC를 배웁니다. 6주차 3차시에는 실제 MySQL 데이터베이스를
K8s에 배포해보는 실습도 있으니 기대해주세요.
