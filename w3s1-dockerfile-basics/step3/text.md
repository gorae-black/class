이제 완성한 `Dockerfile`을 실제 이미지로 만들어봅니다. `docker build -t {이름}:{태그} .`
명령은 현재 폴더(`.`)의 `Dockerfile`을 읽어서 한 줄씩 순서대로 실행하며 이미지를 만듭니다.

```
docker build -t mynode:v1 .
```

**실행 결과 예시**

```
[+] Building 4.2s (10/10) FINISHED
 => [1/4] FROM docker.io/library/node:18-slim
 => [2/4] WORKDIR /app
 => [3/4] COPY package.json .
 => [4/5] RUN npm install
 => [5/5] COPY app.js .
 => exporting to image
 => => naming to docker.io/library/mynode:v1
```

마지막 줄에 `mynode:v1`으로 이미지 이름이 지정된 것이 보이면 빌드 성공입니다. `docker images`로도
확인할 수 있습니다.

```
docker images
```

목록에 `mynode` 이미지가 있으면, `Dockerfile`의 레시피대로 이미지가 잘 만들어진 것입니다.
