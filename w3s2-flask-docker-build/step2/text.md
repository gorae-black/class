지난 1차시에서 배운 명령어들을 이 Flask 앱에 그대로 적용해서 `Dockerfile`을 작성합니다.

`FROM python:3.11-slim`으로 파이썬이 설치된 기반 이미지를 가져오고, `WORKDIR /app`으로 작업
폴더를 정합니다. `COPY app.py .`로 방금 만든 파일을 이미지 안에 넣고, `RUN pip install flask`로
Flask 라이브러리를 설치합니다. `EXPOSE 5000`으로 5000번 포트를 쓴다고 알려주고, 마지막
`CMD ["python", "app.py"]`로 컨테이너가 시작될 때 이 앱을 실행하도록 합니다.

```
cat <<'EOF' > Dockerfile
FROM python:3.11-slim
WORKDIR /app
COPY app.py .
RUN pip install flask
EXPOSE 5000
CMD ["python", "app.py"]
EOF
```

**실행 결과 예시**

```
cat Dockerfile
```

```
FROM python:3.11-slim
WORKDIR /app
COPY app.py .
RUN pip install flask
EXPOSE 5000
CMD ["python", "app.py"]
```

`Dockerfile`의 여섯 줄이 그대로 보이면 정상입니다. 이제 이 레시피대로 이미지를 빌드해봅니다.
