`docker logs`는 그 컨테이너가 지금까지 출력한 로그를 보여줍니다. 실행 중인 프로세스 안에서 어떤
일이 벌어지고 있는지 "창문 너머로 구경"하는 방법입니다.

```
docker logs web2
```

**실행 결과 예시**

```
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Configuration complete; ready for start up
2026/07/24 10:00:00 [notice] 1#1: nginx/1.27.0
2026/07/24 10:00:00 [notice] 1#1: start worker processes
```

nginx 웹 서버가 시작되며 출력한 초기화 로그가 보이면 정상입니다. (버전이나 시각은 실습 환경에
따라 다르게 보일 수 있습니다.)
