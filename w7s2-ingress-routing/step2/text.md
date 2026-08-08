Ingress로 경로를 나눠 연결할 대상이 필요합니다. `/ko` 경로용, `/en` 경로용으로 서로 다른 응답을
돌려주는 앱을 `hashicorp/http-echo` 이미지로 각각 구성합니다.

```
cat <<'EOF' > ko-app.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ko-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: ko-app
  template:
    metadata:
      labels:
        app: ko-app
    spec:
      containers:
        - name: ko-app
          image: hashicorp/http-echo
          args:
            - "-text=안녕하세요, 한국어(ko) 서비스입니다"
---
apiVersion: v1
kind: Service
metadata:
  name: ko-app
spec:
  selector:
    app: ko-app
  ports:
    - port: 80
      targetPort: 5678
EOF
kubectl apply -f ko-app.yaml

cat <<'EOF' > en-app.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: en-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: en-app
  template:
    metadata:
      labels:
        app: en-app
    spec:
      containers:
        - name: en-app
          image: hashicorp/http-echo
          args:
            - "-text=Hello, this is the English (en) service"
---
apiVersion: v1
kind: Service
metadata:
  name: en-app
spec:
  selector:
    app: en-app
  ports:
    - port: 80
      targetPort: 5678
EOF
kubectl apply -f en-app.yaml
```

**실행 결과 예시**

```
deployment.apps/ko-app created
service/ko-app created
deployment.apps/en-app created
service/en-app created
```

`kubectl get pods`로 `ko-app`, `en-app` Pod가 각각 `Running` 상태인지 확인하고 다음 단계로
넘어가세요.
