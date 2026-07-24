여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서 (필수 제출)**

개인 로컬 VM(cloud-lab)에서 동일하게 `docker run -d --name web nginx`, `docker ps`,
`docker inspect web | grep IPAddress`를 순서대로 실행하고, 결과를 캡처하거나 GitHub 링크로
LMS 과제 게시판에 제출해주세요.

**생각해볼 질문**: Killercoda에서 나온 IP와 VM에서 나온 IP가 다를 텐데, 왜 다를까요? 정답은 — 서로
다른 컨테이너 환경이라 각자 독립적인 네트워크 공간을 갖기 때문입니다. 오늘 배운 "격리"라는 개념이
여기서도 그대로 적용됩니다.
