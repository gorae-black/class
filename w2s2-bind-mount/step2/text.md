방금 만든 폴더 안에 아주 간단한 HTML 파일을 하나 만듭니다. 이 파일이 곧 nginx 컨테이너가
보여줄 웹 페이지가 됩니다.

```
echo '<h1>Hello Cloud!</h1>' > ~/html/index.html
```

이 명령어도 출력 없이 프롬프트가 바로 돌아오면 정상입니다. `cat ~/html/index.html`로 내용을
확인해보면 방금 쓴 `<h1>Hello Cloud!</h1>`가 그대로 들어있는 것을 볼 수 있습니다.
