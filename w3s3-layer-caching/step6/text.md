여기부터는 **선택사항**입니다. 완성한 이미지를 Docker Hub에 올려서 다른 사람과 공유해보고 싶다면
해보세요. Docker Hub 계정이 있어야 진행할 수 있습니다.

먼저 `docker login`으로 Docker ID와 비밀번호를 입력해 로그인합니다.

```
docker login
```

본인 Docker ID를 이미지 이름 앞에 붙여서 다시 빌드합니다. `{여러분의dockerhub_id}` 자리에 실제
본인의 Docker ID를 넣으세요.

```
docker build -t {여러분의dockerhub_id}/myflask:v1 .
```

빌드가 끝나면 Docker Hub에 올립니다.

```
docker push {여러분의dockerhub_id}/myflask:v1
```

**실행 결과 예시**

```
The push refers to repository [docker.io/{여러분의dockerhub_id}/myflask]
5f70bf18a086: Pushed
v1: digest: sha256:... size: 1234
```

Docker Hub 웹사이트(hub.docker.com)에 로그인해서 본인 저장소에 이미지가 올라갔는지 확인해보세요.
계정이 없거나 이 단계를 건너뛰어도 오늘 실습의 핵심(레이어 캐싱)은 이미 완료한 것이니 전혀
문제없습니다.
