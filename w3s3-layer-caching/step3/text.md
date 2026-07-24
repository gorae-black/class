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
 => [1/4] FROM docker.io/library/python:3.11-slim
 => [2/4] WORKDIR /app
 => [3/4] COPY app.py .
 => [4/4] RUN pip install flask
 => exporting to image

real    0m12.951s
user    0m0.041s
sys     0m0.029s
```

빌드 출력에서 `CACHED` 표시 없이 `COPY app.py .`와 `RUN pip install flask` 두 줄이 다시 실제로
실행된 것을 확인하세요. `app.py`가 바뀌면서 `COPY` 레이어가 바뀌었고, 그 아래에 있는
`RUN pip install flask`까지 처음부터 다시 실행된 것입니다. `time` 결과도 이전 단계와 비슷하게
오래 걸렸을 것입니다 — 캐시의 이점을 전혀 못 본 것입니다.
