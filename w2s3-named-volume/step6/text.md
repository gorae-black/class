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

`webvol2`는 방금 만든 **빈** Named Volume을 연결했는데도 nginx 기본 환영 페이지가 나옵니다.
Docker는 새 Named Volume을 처음 마운트할 때, 그 경로에 이미지 안에 있던 파일(여기서는 nginx의
기본 `index.html`)을 **자동으로 복사**해 넣기 때문입니다. Bind Mount(`webvol`)는 이런 자동 복사가
일어나지 않아 사용자가 직접 파일을 만들어 넣어야 했던 것과 대비되는 부분입니다.
