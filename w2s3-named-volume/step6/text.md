1주차에 배운 `docker inspect`로 `webvol2`의 IP를 찾아 접속해보겠습니다. Bind Mount(`webvol`)와는
다른 화면이 나올 겁니다.

```
docker inspect webvol2 | grep IPAddress
curl <위에서 확인한 IP주소>
```

**실행 결과 예시**

```
<html>
<head><title>Welcome to nginx!</title></head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed...</p>
</body>
</html>
```

"Hello Cloud!"가 아니라 nginx 기본 환영 페이지(`Welcome to nginx!`)가 나왔죠? Named
Volume(`mydata`)은 처음엔 빈 상태로 만들어지지만, Docker가 컨테이너를 처음 실행할 때 이미지 안에
원래 있던 내용을 자동으로 복사해 넣어주기 때문입니다. Bind Mount(`~/html`)는 우리가 미리 준비해둔
폴더를 그대로 연결했지만, Named Volume은 이미지의 기본 콘텐츠로 채워진 채 시작한다는 게 핵심
차이입니다.
