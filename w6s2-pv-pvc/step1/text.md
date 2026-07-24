hostPath는 노드(VM)의 특정 디렉토리를 PV로 그대로 사용하는 방식입니다. `/data/mysql` 디렉토리를
1Gi 용량의 PV로 등록해보겠습니다.

```
cat << 'EOF' > pv.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: mysql-pv
spec:
  capacity:
    storage: 1Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /data/mysql
EOF
kubectl apply -f pv.yaml
```

**실행 결과 예시**

```
persistentvolume/mysql-pv created
```

`created` 메시지가 나오면 PV가 정상적으로 만들어진 것입니다.
