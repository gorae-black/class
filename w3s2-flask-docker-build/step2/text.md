지난 1차시에서 배운 명령어들을 이 Flask 앱에 그대로 적용해서 `Dockerfile`을 작성합니다.

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

`Dockerfile`의 여섯 줄이 그대로 보이면 정상입니다.
