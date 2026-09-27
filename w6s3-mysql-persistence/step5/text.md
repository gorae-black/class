이제 이 Pod를 강제로 삭제해보겠습니다. Deployment로 배포했기 때문에, Pod가 사라지면 원하는
개수(1개)를 유지하기 위해 자동으로 새 Pod가 만들어집니다.

```
kubectl delete pod {mysql파드이름}
```

**실행 결과 예시**

```
pod "mysql-7d9c6d8f45-x2n7q" deleted
```

`deleted` 메시지가 나오면 정상입니다. 잠시 후 `kubectl get pods`를 실행하면 이름이 다른 새 Pod가
생성되고 있는 것을 볼 수 있습니다.
