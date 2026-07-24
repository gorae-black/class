`kubectl create configmap {이름} --from-literal=KEY=VALUE`로 로그 레벨, API 서버 주소처럼 '민감하지
않은' 설정값을 담은 ConfigMap을 만듭니다.

```
kubectl create configmap app-config \
  --from-literal=LOG_LEVEL=debug \
  --from-literal=API_URL=http://api.example.com:8080
```

**실행 결과 예시**

```
configmap/app-config created
```

```
kubectl get configmap app-config
```

```
NAME         DATA   AGE
app-config   2      5s
```

DATA 칸에 `2`가 나오면(LOG_LEVEL, API_URL 두 개의 키·값 쌍) ConfigMap이 정상적으로 만들어진
것입니다.
