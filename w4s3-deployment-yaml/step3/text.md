`kubectl apply -f {파일명}`으로 이 YAML 파일을 클러스터에 적용(배포)합니다.

```
kubectl apply -f deployment.yaml
```

**실행 결과 예시**

```
deployment.apps/myapp created
```

`created` 메시지가 보이면, K8s에게 "myapp이라는 이름으로 nginx Pod가 항상 2개 떠 있어야 한다"는
선언이 정상적으로 전달된 것입니다. 실제로 Pod가 만들어지는 과정은 다음 단계에서 확인합니다.
