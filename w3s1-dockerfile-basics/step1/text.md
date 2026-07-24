오늘 이미지로 만들어볼 아주 간단한 Node.js 앱 파일을 먼저 준비합니다. 작업할 폴더를 만들고
이동합니다.

```
mkdir ~/mynode && cd ~/mynode
```

앱 파일 `app.js`를 만듭니다. 간단한 웹 서버 하나를 띄우는 코드입니다.

```
cat <<'EOF' > app.js
const http = require('http');
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello from Node.js in Docker!\n');
});

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
EOF
```

`package.json`도 함께 만듭니다.

```
cat <<'EOF' > package.json
{
  "name": "mynode",
  "version": "1.0.0",
  "main": "app.js",
  "scripts": {
    "start": "node app.js"
  }
}
EOF
```

**실행 결과 예시**

두 명령 모두 별다른 출력 없이 조용히 파일을 만듭니다. `ls`로 파일이 잘 생겼는지 확인하세요.

```
ls
```

```
app.js  package.json
```

`app.js`와 `package.json` 두 파일이 보이면 정상입니다. 이제 이 앱을 이미지로 만들 `Dockerfile`을
작성할 차례입니다.
