Secret은 사용법이 ConfigMap과 거의 똑같습니다. `kubectl create secret generic`으로 DB 비밀번호 같은
민감한 정보를 담은 Secret을 만듭니다.

```
kubectl create secret generic db-secret \
  --from-literal=DB_PASSWORD=SuperSecret123
```

**실행 결과 예시**

```
secret/db-secret created
```

```
kubectl get secret db-secret
```

```
NAME        TYPE     DATA   AGE
db-secret   Opaque   1      5s
```

TYPE이 `Opaque`(일반 Secret)이고 DATA가 `1`(DB_PASSWORD 한 개)로 나오면 정상입니다.
