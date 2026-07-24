오늘 강의에서 본 것처럼, 아래는 일부(`FROM` / `COPY` / `RUN` / `CMD`)가 빈칸으로 되어 있는
`Dockerfile`입니다.

```
FROM ____
WORKDIR /app
COPY ____
RUN ____
CMD ____
```

각 빈칸에 무엇이 들어가야 할지 생각해봅니다.

- `FROM`: Node.js가 설치되어 있는 기반 이미지
- `COPY`: 방금 만든 `package.json`과 `app.js`를 이미지 안으로 복사하는 명령
- `RUN`: 이미지를 만드는 동안 패키지를 설치하는 명령
- `CMD`: 컨테이너가 시작될 때 앱을 실행하는 명령

아래 명령으로 빈칸을 채운 완성된 `Dockerfile`을 작성합니다.

```
cat <<'EOF' > Dockerfile
FROM node:18-slim
WORKDIR /app
COPY package.json .
RUN npm install
COPY app.js .
CMD ["node", "app.js"]
EOF
```

**실행 결과 예시**

```
cat Dockerfile
```

```
FROM node:18-slim
WORKDIR /app
COPY package.json .
RUN npm install
COPY app.js .
CMD ["node", "app.js"]
```

`FROM`, `COPY`, `RUN`, `CMD` 네 줄 모두 빈칸 없이 채워져 있는지 확인하세요.
