`docker ps`는 현재 "실행 중인" 컨테이너만 보여줍니다.

`docker ps -a`는 실행이 끝나 "종료된" 컨테이너까지 전부(all) 보여줍니다.

```
docker ps -a
```

**실행 결과 예시**

```
CONTAINER ID   IMAGE         COMMAND    CREATED        STATUS                     NAMES
3f1a2b9c8d7e   hello-world   "/hello"   1 minute ago   Exited (0) 1 minute ago    festive_lovelace
```

STATUS가 "Exited (0)"인 것은 정상입니다. hello-world는 인사 메시지를 출력하고 할 일을 마쳤기 때문에
자동으로 종료된 것이며 오류가 아닙니다.
