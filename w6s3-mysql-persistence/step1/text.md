이 Killercoda 환경은 매번 새로 시작되는 클러스터라서, 지난 2차시에 만든 PV와 PVC가 남아 있지 않습니다.
그래서 먼저 2차시와 같은 `pv.yaml`, `pvc.yaml`을 다시 만들어 적용합니다.

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
kubectl get pvc
```

**실행 결과 예시**

```
persistentvolume/mysql-pv created
persistentvolumeclaim/mysql-pvc created
NAME        STATUS   VOLUME     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
mysql-pvc   Bound    mysql-pv   1Gi        RWO                           <unset>                 1s
```

STATUS가 `Bound`로 나오면 준비가 끝난 것입니다.
