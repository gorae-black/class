`docker inspect`로 `webvol2`의 IP를 찾아 접속해봅니다.

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

nginx 기본 환영 페이지(`Welcome to nginx!`)가 나오면 정상입니다.
