`.dockerignore`는 Git을 써보신 분이라면 익숙할 `.gitignore`와 비슷합니다. 빌드할 때 이미지 안에
넣지 않을 파일이나 폴더를 지정합니다. 예를 들어 `__pycache__/`, `.git/`, `*.log` 같은 파일은 굳이
이미지에 들어갈 필요가 없습니다. 특히 `COPY . .`처럼 폴더 전체를 통째로 복사할 때, `.dockerignore`가
없으면 불필요한 파일까지 전부 이미지에 들어가버리니 꼭 챙겨야 합니다.

```
cat <<'EOF' > .dockerignore
__pycache__/
.git/
*.log
EOF
```

**실행 결과 예시**

```
cat .dockerignore
```

```
__pycache__/
.git/
*.log
```

한 번 더 빌드해서 정상적으로 반영되는지 확인합니다.

```
docker build -t myflask:good .
```

빌드가 평소처럼 문제 없이 끝나면, 다음 빌드부터는 `__pycache__`, `.git`, `*.log` 같은 파일이 있어도
이미지 안에 복사되지 않습니다. 이미지 용량도 줄고 빌드 속도도 빨라집니다.
