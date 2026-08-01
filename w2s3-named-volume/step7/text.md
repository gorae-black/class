`docker exec`로 `webvol2` 안에 파일을 직접 작성합니다.

```
docker exec webvol2 sh -c "echo '<h1>Named Volume Test</h1>' > /usr/share/nginx/html/index.html"
curl <IP주소>
```

**실행 결과 예시**

```
<h1>Named Volume Test</h1>
```

이번엔 정상적으로 출력되면 성공입니다.
