여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 VM에서 아래 순서로 진행하고, `curl http://myapp.local` 접속에 성공하는지 확인해보세요.

1. `echo "$(minikube ip) myapp.local" | sudo tee -a /etc/hosts` — VM 계정 비밀번호 입력이
   필요합니다.
2. `myapp.local`을 host로 지정하는 `ingress.yaml`을 작성하고 `kubectl apply`로 적용하세요.
3. `curl http://myapp.local`로 접속을 확인하세요.

**생각해볼 질문**: 오늘 Killercoda에서는 hosts 파일 없이 경로(`/ko`, `/en`)만으로 라우팅을
확인했는데, VM에서는 hosts 파일에 도메인을 매핑하는 과정이 추가로 필요했습니다. 왜 그럴까요?
정답은 — VM의 Ingress 규칙에는 `host: myapp.local`이 있어서, 요청한 도메인이 `myapp.local`일 때만
이 규칙이 적용되기 때문입니다. 그래서 hosts 파일로 `myapp.local`을 minikube IP에 연결하고 그 이름으로
요청해야 합니다. 반면 오늘 Killercoda의 규칙에는 host가 없어서, `localhost`로 요청해도 경로(`/ko`, `/en`)만
보고 라우팅합니다. 판단 기준(host 또는 path)만 다를 뿐, Ingress가 규칙에 따라 요청을 알맞은 Service로
보내는 원리는 같습니다.

다음 3차시에서는 K8s의 자가치유 능력을 직접 확인하고, 4주차부터 오늘까지 배운 K8s 핵심 내용을
함께 정리합니다.
