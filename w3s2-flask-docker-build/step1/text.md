먼저 작업할 폴더를 만들고 이동합니다.

```
mkdir ~/myflask && cd ~/myflask
```

Flask는 파이썬으로 웹 서버를 아주 간단하게 만들 수 있게 해주는 라이브러리입니다. `/`로 접속하면
`Hello, Cloud!`를 응답하는 앱을 만듭니다.

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

**실행 결과 예시**

별다른 출력 없이 조용히 파일이 만들어집니다. `cat app.py`로 내용을 확인해보세요.

```
cat app.py
```

`app.py` 파일이 잘 만들어졌는지 확인했다면, 이제 이 앱을 이미지로 만들 `Dockerfile`을 작성할
차례입니다.
