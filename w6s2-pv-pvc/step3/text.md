이제 이 PV가 제공하는 만큼의 storage를 요청하는 PVC를 작성합니다. Pod는 이 PVC를 통해서 PV에
연결됩니다 — 실제 저장공간이 어디에 있는지 직접 알 필요가 없습니다.

```
cat << 'EOF' > pvc.yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: mysql-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
  storageClassName: ""
EOF
kubectl apply -f pvc.yaml
```

**실행 결과 예시**

```
persistentvolumeclaim/mysql-pvc created
```

`created` 메시지가 나오면 PVC가 정상적으로 만들어진 것입니다.
