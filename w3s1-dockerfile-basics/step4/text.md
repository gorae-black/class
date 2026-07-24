마지막으로 방금 만든 이미지를 컨테이너로 실행해서 정상 동작하는지 확인합니다. `-p 3000:3000`은
컨테이너의 3000번 포트를 이 터미널의 3000번 포트로 연결하는 옵션입니다.

```
docker run -d --name mynode-app -p 3000:3000 mynode:v1
```

`docker ps`로 컨테이너가 정상적으로 떠 있는지 확인합니다.

```
docker ps
```

**실행 결과 예시**

```
CONTAINER ID   IMAGE         COMMAND                  STATUS         PORTS                    NAMES
a1b2c3d4e5f6   mynode:v1     "docker-entrypoint.s…"   Up 5 seconds   0.0.0.0:3000->3000/tcp   mynode-app
```

`docker logs`로 앱이 실제로 정상 실행됐는지도 확인해봅니다.

```
docker logs mynode-app
```

```
Server running at http://localhost:3000/
```

STATUS가 `Up ...`이고, 로그에 "Server running..." 메시지가 보이면 빈칸 Dockerfile을 제대로
완성해서 이미지를 만들고 실행까지 성공한 것입니다. 오늘 실습은 여기까지입니다.
