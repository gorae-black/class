이번엔 `RUN`을 `COPY`보다 위로 옮긴 '좋은' 순서로 `Dockerfile`을 바꿔보겠습니다.

```
cat <<'EOF' > Dockerfile
FROM python:3.11-slim
WORKDIR /app
RUN pip install flask
COPY app.py .
EXPOSE 5000
CMD ["python", "app.py"]
EOF
```

순서를 바꾼 뒤 한 번 빌드해서 이 '좋은' 순서 기준의 레이어를 만들어둡니다.

```
time docker build -t myflask:good .
```

이제 다시 코드를 한 줄 고치고,

```
sed -i "s/updated/updated again/" app.py
```

같은 '좋은' 순서 `Dockerfile`로 다시 빌드해봅니다.

```
time docker build -t myflask:good .
```

**실행 결과 예시**

```
[+] Building 1.1s (9/9) FINISHED
 => CACHED [1/4] FROM docker.io/library/python:3.11-slim
 => CACHED [2/4] WORKDIR /app
 => CACHED [3/4] RUN pip install flask
 => [4/4] COPY app.py .
 => exporting to image

real    0m1.187s
user    0m0.038s
sys     0m0.021s
```

`RUN pip install flask` 앞에 `CACHED`가 붙고, `real` 시간이 1~2초 수준으로 짧아지면
정상입니다.
