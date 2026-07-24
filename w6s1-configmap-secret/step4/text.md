이제 방금 만든 ConfigMap과 Secret의 값을 Pod의 환경변수로 불러와보겠습니다. ConfigMap은
`envFrom.configMapRef`로 전체를 한 번에 불러오고, Secret은 `env.valueFrom.secretKeyRef`로 원하는
키 하나를 지정해서 불러옵니다.

```
cat << 'EOF' > env-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: env-demo
spec:
  containers:
    - name: app
      image: busybox
      command: ["sleep", "3600"]
      envFrom:
        - configMapRef:
            name: app-config
      env:
        - name: DB_PASSWORD
          valueFrom:
            secretKeyRef:
              name: db-secret
              key: DB_PASSWORD
EOF
kubectl apply -f env-pod.yaml
```

**실행 결과 예시**

```
pod/env-demo created
```

```
kubectl get pods
```

```
NAME       READY   STATUS    RESTARTS   AGE
env-demo   1/1     Running   0          5s
```

STATUS가 `Running`이면 정상입니다.
