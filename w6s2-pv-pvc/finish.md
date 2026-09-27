여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 VM에서 `minikube start` 후 Killercoda와 같은 순서로 pv.yaml, pvc.yaml을 작성하고 적용해보세요.
`kubectl get pv`, `kubectl get pvc`로 STATUS가 Bound로 나오는지 확인해보세요.

**꼭 기억하세요**: 개인 VM에서 만든 `mysql-pv`, `mysql-pvc`는 지우지 말고 그대로 남겨두세요. 3차시에서 이
PVC를 MySQL Pod에 연결합니다. (Killercoda는 매번 새 환경이라 3차시 시작 시 PV/PVC를 다시 만듭니다.)
