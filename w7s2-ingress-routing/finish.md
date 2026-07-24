여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서 (필수 제출)**

개인 VM에서 아래 순서로 진행하고, `curl http://myapp.local` 접속에 성공한 화면을 캡처해서
제출해주세요.

1. `echo "$(minikube ip) myapp.local" | sudo tee -a /etc/hosts` — VM 계정 비밀번호 입력이
   필요합니다.
2. `myapp.local`을 host로 지정하는 `ingress.yaml`을 작성하고 `kubectl apply`로 적용하세요.
3. `curl http://myapp.local`로 접속을 확인하세요.

**생각해볼 질문**: 오늘 Killercoda에서는 hosts 파일 없이 경로(`/ko`, `/en`)만으로 라우팅을
확인했는데, VM에서는 hosts 파일에 도메인을 매핑하는 과정이 추가로 필요했습니다. 왜 그럴까요?
정답은 — hosts 매핑은 "도메인 이름"을 IP로 바꿔주는 역할일 뿐, Ingress가 요청을 보고 라우팅을
판단하는 원리(host든 path든) 자체는 동일하기 때문입니다. 오늘 배운 경로 기반 라우팅에 host 기반
라우팅을 얹은 것이 VM 실습이라고 생각하면 됩니다.

다음 3차시에서는 K8s의 자가치유 능력을 직접 확인하고, 4주차부터 오늘까지 배운 K8s 핵심 내용을
함께 정리합니다.
