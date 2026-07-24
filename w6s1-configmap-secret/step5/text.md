`kubectl exec`로 Pod 안에 들어가 `env` 명령으로 ConfigMap·Secret 값이 실제로 환경변수에 들어왔는지
확인합니다.

```
kubectl exec -it env-demo -- env | grep -E "LOG_LEVEL|API_URL|DB_PASSWORD"
```

**실행 결과 예시**

```
LOG_LEVEL=debug
API_URL=http://api.example.com:8080
DB_PASSWORD=SuperSecret123
```

세 값이 모두 Pod 안에서 정상적으로 조회되면, ConfigMap과 Secret이 컨테이너에 제대로 전달된
것입니다.
