이제 코드를 한 줄만 살짝 고쳐보겠습니다. 응답 문자열만 바꿔봅니다.

```
sed -i "s/Hello, Cloud!/Hello, Cloud! (updated)/" app.py
```

같은 '나쁜' 순서 `Dockerfile`로 다시 빌드하고 시간을 재봅니다.

```
time docker build -t myflask:bad .
```

**실행 결과 예시**

```
[+] Building 12.9s (9/9) FINISHED
 => CACHED [1/4] FROM docker.io/library/python:3.11-slim
 => CACHED [2/4] WORKDIR /app
 => [3/4] COPY app.py .
 => [4/4] RUN pip install flask
 => exporting to image

real    0m12.951s
user    0m0.041s
sys     0m0.029s
```

`FROM`과 `WORKDIR`는 `CACHED`로 표시되고, `COPY app.py .`와 `RUN pip install flask`만
`CACHED` 없이 다시 실행되면 정상입니다.
