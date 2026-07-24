4주차 3차시에 작성했던 것과 같은 `deployment.yaml`을 다시 만듭니다. `apiVersion`은 `apps/v1`,
`kind`는 `Deployment`, 이름은 `myapp`, `replicas`는 2, 이미지는 `nginx`입니다.

```
cat <<EOF > deployment.yaml
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
kubectl apply -f deployment.yaml
```

**실행 결과 예시**

```
deployment.apps/myapp created
```

이제 이 Deployment가 오늘 1~3차시 내내 계속 사용할 대상입니다. 지우지 마세요.
