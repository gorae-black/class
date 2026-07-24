여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서 (필수 제출)**

개인 로컬 VM(cloud-lab)에서 `minikube start` 후 같은 YAML로 `kubectl apply -f deployment.yaml`을
실행하고, `kubectl get pods`로 2개가 `Running`인지 확인해 캡처해주세요.

여기서 하나만 더 해보세요. `kubectl delete pod {파드 이름 중 하나}`로 Pod 하나를 강제로 지운 뒤
`kubectl get pods`를 다시 실행해보시면 — 신기하게도 다시 2개로 돌아와 있을 겁니다! 이게 오늘 배운
'선언적 관리'가 실제로 작동하는 모습입니다. 이 원리는 7주차 '자가치유' 시간에 자세히 다룹니다,
오늘은 맛보기입니다. 이 과정도 캡처해서 함께 LMS 과제 게시판에 제출해주세요.

4주차 수고 많으셨습니다! K8s가 왜 필요한지부터 Pod, Deployment까지 — Kubernetes의 첫 관문을 잘
넘으셨습니다. 다음 5주차에서는 Pod마다 IP가 다르고 죽었다 살아나면 바뀌는 문제를 해결하는
**Service**를 배웁니다.
