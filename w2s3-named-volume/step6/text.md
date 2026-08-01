1주차에 배운 `docker inspect`로 `webvol2`의 IP를 찾아 접속해보겠습니다. Bind Mount(`webvol`)와는
다른 화면이 나올 겁니다.

```
docker inspect webvol2 | grep IPAddress
curl <위에서 확인한 IP주소>
```

**실행 결과 예시**

```
403 Forbidden
```

"Hello Cloud!"가 아니라 `403 Forbidden`이 나왔죠? Named Volume(`mydata`)은 처음에 완전히 빈
공간으로 시작하기 때문에, nginx가 원래 갖고 있던 기본 페이지까지 가려버립니다. Bind
Mount(`~/html`)는 우리가 미리 준비해둔 폴더를 그대로 연결했지만, Named Volume은 빈 폴더에서
시작한다는 게 핵심 차이입니다.
