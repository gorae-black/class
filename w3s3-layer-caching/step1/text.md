지난 2차시에 만들었던 Flask 앱을 이 Killercoda 환경에 다시 준비합니다. 작업 폴더를 만들고
이동합니다.

```
mkdir ~/myflask && cd ~/myflask
```

```
cat <<'EOF' > app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, Cloud!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
EOF
```

이번엔 일부러 '나쁜' 순서로 `Dockerfile`을 작성합니다. `COPY app.py .`를
`RUN pip install flask`보다 먼저 쓴 버전입니다.

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
ls
```

```
Dockerfile  app.py
```

두 파일이 준비됐다면, 이 '나쁜' 순서로 먼저 빌드해서 시간을 재보겠습니다.
