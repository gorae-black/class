`docker inspect`로 `webvol2`의 IP를 찾아 접속해봅니다.

```
docker inspect webvol2 | grep IPAddress
curl <위에서 확인한 IP주소>
```

**실행 결과 예시**

```
403 Forbidden
```

`webvol2`는 방금 만든 **빈** Named Volume을 연결한 것이라 아직 `index.html`이 없습니다. 그래서
`Welcome to nginx!` 기본 페이지 대신 `403 Forbidden`이 나오는 것이 정상입니다.
