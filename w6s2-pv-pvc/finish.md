여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**오늘 배운 내용 정리**

첫째, PV는 실제 저장공간, PVC는 그 저장공간을 향한 요청서입니다.
둘째, hostPath PV는 VM 디렉토리를 그대로 사용해 데이터를 보존합니다.

**다음 순서**

개인 로컬 VM에서도 동일하게 pv.yaml, pvc.yaml을 작성하고 적용해보세요. `kubectl get pv`,
`kubectl get pvc` 결과를 캡처해서 STATUS가 Bound로 나오는지 확인한 화면을 LMS 과제 게시판에
제출해주세요.

**꼭 기억하세요**: 오늘 만든 PV와 PVC는 지우지 말고 그대로 남겨두세요. 다음 3차시에서 바로 이
PVC를 실제 MySQL Pod에 연결합니다.
