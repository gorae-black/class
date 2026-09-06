`docker ps -a`로 방금 멈춘 `web2`의 상태가 어떻게 바뀌었는지 확인합니다.

```
docker ps -a
```

**실행 결과 예시**

```
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS                      PORTS     NAMES
6b1f2a9c4e21   nginx     "/docker-entrypoint.…"   2 minutes ago   Exited (0) 5 seconds ago              web2
```

STATUS 칸이 `Exited`로 바뀐 것을 확인하세요.
