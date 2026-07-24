다시 `docker ps -a`로 상태를 확인해서, `web2`가 정말 다시 살아났는지 확인합니다.

```
docker ps -a
```

**실행 결과 예시**

```
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
6b1f2a9c4e21   nginx     "/docker-entrypoint.…"   3 minutes ago   Up 5 seconds             web2
```

STATUS 칸이 다시 `Up ...` 형태로 바뀌었다면 정상입니다. stop → start를 거쳐도 컨테이너 ID와
이름은 그대로 유지된다는 점도 함께 확인하세요.
