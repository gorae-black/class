지난 1~2차시와 같은 `myapp` Deployment를 다시 만들고, NodePort Service까지 연결합니다.

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
kubectl expose deployment myapp --type=NodePort --port=80
```

**실행 결과 예시**

```
deployment.apps/myapp created
service/myapp exposed
```

Pod 2개가 Running 상태가 될 때까지 잠시 기다린 뒤 다음 단계로 진행하세요 (`kubectl get pods`로
확인 가능합니다).
