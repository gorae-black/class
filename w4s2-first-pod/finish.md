여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서 (필수 제출)**

개인 로컬 VM(cloud-lab)에서 `minikube start`(지난 시간에 켜두셨다면 생략 가능)로 클러스터를 켜고,
동일하게 `kubectl run mypod --image=nginx`, `kubectl get pods`, `kubectl describe pod mypod`,
`kubectl logs mypod`를 순서대로 실행한 결과를 캡처해서 LMS 과제 게시판에 제출해주세요.

(선택) `kubectl delete pod mypod` 후 `kubectl get pods`로 사라졌는지도 확인해보세요. 필수 제출
항목은 아니지만, 다음 3차시의 자동 복구와 비교해보면 좋습니다.

다음 3차시에서는 Pod를 하나씩 손으로 만드는 대신, '항상 몇 개가 떠 있어야 한다'를 선언하면 K8s가
자동으로 그 개수를 유지해주는 **Deployment**를 YAML 파일로 작성하고 배포해보겠습니다.
