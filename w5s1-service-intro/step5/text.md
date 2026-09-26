방금 삭제된 Pod의 이전 IP로 curl을 시도해보겠습니다.

```
curl --connect-timeout 5 <Step 3에서 삭제한 Pod의 IP>
```

`--connect-timeout 5`는 5초 안에 연결되지 않으면 기다리지 말고 포기하라는 옵션입니다(이 옵션이
없으면 응답 없는 IP를 2분 넘게 기다리게 됩니다).

**실행 결과 예시**

```
curl: (28) Connection timed out after 5002 milliseconds
```

환경에 따라 `curl: (7) Failed to connect to ... No route to host`처럼 나올 수도 있습니다.

어느 쪽이든 nginx 페이지 대신 에러가 나오면 정상입니다. Pod가 사라지면 그 IP도 함께 사라집니다.
