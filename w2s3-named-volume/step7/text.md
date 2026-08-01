Bind Mount는 VM에서 직접 파일을 고쳤습니다. Named Volume은 VM에서 정확한 경로를 모르니,
컨테이너를 통해(`exec`) 파일을 만들어보겠습니다.

```
docker exec webvol2 sh -c "echo '<h1>Named Volume Test</h1>' > /usr/share/nginx/html/index.html"
curl <IP주소>
```

**실행 결과 예시**

```
<h1>Named Volume Test</h1>
```

이번엔 제대로 나옵니다. Bind Mount는 "VM에서 직접 수정", Named Volume은 "컨테이너를 통해 수정"한다는
차이를 직접 확인했습니다.
