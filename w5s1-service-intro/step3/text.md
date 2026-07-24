이제 Pod 하나를 강제로 지워보겠습니다. 위 결과에서 확인한 Pod 이름 중 하나를 아래 명령어의
`{파드 이름}` 자리에 그대로 넣어 실행하세요.

```
kubectl delete pod {파드 이름}
```

**실행 결과 예시**

```
pod "myapp-7d9f8c6b5d-abcde" deleted
```

Deployment는 "항상 2개가 떠 있어야 한다"고 선언되어 있으므로, 이 Pod가 사라지자마자 ReplicaSet이
새 Pod를 하나 자동으로 만들어냅니다.
