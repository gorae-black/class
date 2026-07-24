`time` 명령을 앞에 붙이면 명령어 실행에 걸린 시간을 알려줍니다. 이 '나쁜' 순서 `Dockerfile`로 첫
빌드를 하고 시간을 기록합니다.

```
time docker build -t myflask:bad .
```

**실행 결과 예시**

```
[+] Building 13.4s (9/9) FINISHED
 => [1/4] FROM docker.io/library/python:3.11-slim
 => [2/4] WORKDIR /app
 => [3/4] COPY app.py .
 => [4/4] RUN pip install flask
 => exporting to image

real    0m13.482s
user    0m0.045s
sys     0m0.032s
```

`real` 줄이 실제로 걸린 시간입니다(네트워크 상태에 따라 숫자는 다를 수 있습니다). 이 숫자를
기억해두세요 — 다음 단계에서 비교할 기준값입니다.
