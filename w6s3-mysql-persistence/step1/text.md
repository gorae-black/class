공식 `mysql` 이미지를 사용합니다. 환경변수로 `MYSQL_ROOT_PASSWORD`를 지정해서 루트 비밀번호를
설정하고, 지난 2차시에 만든 PVC(`mysql-pvc`)를 MySQL이 실제로 데이터를 저장하는 경로인
`/var/lib/mysql`에 마운트합니다. 이 순간부터 MySQL 컨테이너 안에서는 그냥 평범한 로컬 디렉토리에
저장하는 것처럼 보이지만, 실제로는 hostPath 디렉토리에 데이터가 저장됩니다.

Deployment로 배포해야 Pod를 삭제했을 때 자동으로 새 Pod가 만들어집니다.

```
cat << 'EOF' > mysql-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mysql
spec:
  replicas: 1
  selector:
    matchLabels:
      app: mysql
  template:
    metadata:
      labels:
        app: mysql
    spec:
      containers:
        - name: mysql
          image: mysql:8.0
          env:
            - name: MYSQL_ROOT_PASSWORD
              value: "SuperSecret123"
          ports:
            - containerPort: 3306
          volumeMounts:
            - name: mysql-data
              mountPath: /var/lib/mysql
      volumes:
        - name: mysql-data
          persistentVolumeClaim:
            claimName: mysql-pvc
EOF
kubectl apply -f mysql-deployment.yaml
```

**실행 결과 예시**

```
deployment.apps/mysql created
```

`created` 메시지가 나오면 배포가 정상적으로 시작된 것입니다.
