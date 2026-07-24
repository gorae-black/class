`app.py`와 `Dockerfile`이 준비됐으니, `docker build -t myflask:v1 .`으로 빌드합니다.

```
docker build -t myflask:v1 .
```

**실행 결과 예시**

```
[+] Building 12.8s (9/9) FINISHED
 => [1/4] FROM docker.io/library/python:3.11-slim
 => [2/4] WORKDIR /app
 => [3/4] COPY app.py .
 => [4/4] RUN pip install flask
 => exporting to image
 => => naming to docker.io/library/myflask:v1
```

`Successfully tagged` 또는 `naming to ... myflask:v1` 문구가 마지막에 보이면 빌드 성공입니다.
`docker images`로 이미지 목록에 `myflask`가 생겼는지도 확인해보세요.

```
docker images
```

`pip install flask` 과정에서 시간이 조금 걸릴 수 있습니다 — 파이썬 기반 이미지를 내려받고 그 위에
Flask 라이브러리까지 설치하기 때문입니다.
