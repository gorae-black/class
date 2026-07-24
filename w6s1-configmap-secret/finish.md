여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**오늘 배운 내용 정리**

첫째, ConfigMap은 일반 설정값을 코드에서 분리해 관리합니다.
둘째, Secret은 비밀번호 같은 민감 정보를 조금 더 엄격하게 관리하지만, Base64 인코딩 자체는 암호화가
아니라는 점을 기억하세요.

**다음 순서**

개인 로컬 VM에서도 `kubectl create configmap`으로 간단한 설정값을 하나, `kubectl create secret
generic`으로 비밀값을 하나 만들어보세요. `kubectl get configmap`, `kubectl get secret`으로 확인한
결과를 캡처해서 LMS 과제 게시판에 제출해주세요.

다음 2차시에서는 "데이터를 영구적으로 저장하는 방법", PV와 PVC를 배웁니다.
