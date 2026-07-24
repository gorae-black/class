지난 1차시와 같은 `myapp` Deployment를 다시 만듭니다. `apiVersion`은 `apps/v1`, `kind`는
`Deployment`, 이름은 `myapp`, `replicas`는 2, 이미지는 `nginx`입니다.

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

Pod 2개가 Running 상태가 될 때까지 잠시 기다린 뒤 다음 단계로 진행하세요 (`kubectl get pods`로
확인 가능합니다).
