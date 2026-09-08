`docker exec`로 `webvol2` 안에 파일을 직접 작성해서, 기본 환영 페이지를 우리가 쓴 내용으로
덮어써봅니다.

```
docker exec webvol2 sh -c "echo '<h1>Named Volume Test</h1>' > /usr/share/nginx/html/index.html"
curl <IP주소>
```

**실행 결과 예시**

```
<h1>Named Volume Test</h1>
```

기본 환영 페이지 대신 방금 쓴 내용이 출력되면 성공입니다.
