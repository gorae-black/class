VM(이 터미널)의 `~/html/index.html` 파일을 새로운 내용으로 덮어씁니다.

```
echo '<h1>Updated!</h1>' > ~/html/index.html
curl localhost:8080
```

**실행 결과 예시**

```
<h1>Updated!</h1>
```

컨테이너를 재시작하지 않았는데도 "Updated!"로 바뀐 것이 보이면 성공입니다.
