`replicas: 2`(항상 2개 유지)와 `nginx` 이미지를 선언하는 `deployment.yaml` 파일을 작성합니다.
아래 명령어를 그대로 실행하면 해당 내용으로 파일이 만들어집니다.

```
cat <<'EOF' > deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  replicas: 2
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: nginx
        image: nginx
EOF
cat deployment.yaml
```

**실행 결과 예시**

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  replicas: 2
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: nginx
        image: nginx
```

`cat deployment.yaml`로 방금 만든 파일 내용을 확인합니다. `apiVersion: apps/v1`, `kind: Deployment`,
`metadata`(이름 myapp), `spec`(replicas 2, nginx 이미지) 네 부분이 그대로 들어있는지 확인하세요.
