`docker ps`는 현재 "실행 중인" 컨테이너만 보여줍니다.

`docker ps -a`는 실행이 끝나 "종료된" 컨테이너까지 전부(all) 보여줍니다.

```
docker ps -a
```

**실행 결과 예시**

```
CONTAINER ID   IMAGE         COMMAND    CREATED         STATUS                     PORTS     NAMES
3fc446c375c3   hello-world   "/hello"   5 minutes ago   Exited (0) 5 minutes ago             unruffled_khayyam
```

STATUS가 "Exited (0)"인 것은 정상입니다. hello-world는 인사 메시지를 출력하고 할 일을 마쳤기 때문에
자동으로 종료된 것이며 오류가 아닙니다. PORTS 칸이 비어 있는 것도 정상입니다 — hello-world는
네트워크 포트를 사용하지 않습니다.
