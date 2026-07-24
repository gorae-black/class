이제 `kubectl get pods`로 출력된 Pod 이름 중 하나를 골라, 그 Pod를 강제로 삭제합니다. (아래
`{pod-name}` 자리에 방금 확인한 실제 Pod 이름을 넣으세요. 예: `web-6f9b8c7d5-aaaaa`)

```
kubectl delete pod {pod-name}
```

**실행 결과 예시**

```
pod "web-6f9b8c7d5-aaaaa" deleted
```

이 명령을 실행한 직후, 백그라운드로 켜둔 `-w` 창에 아래와 같은 흐름이 실시간으로 이어서
출력됩니다.

```
web-6f9b8c7d5-aaaaa   1/1     Terminating   0          3m
web-6f9b8c7d5-ddddd    0/1     Pending             0          0s
web-6f9b8c7d5-ddddd    0/1     ContainerCreating   0          0s
web-6f9b8c7d5-ddddd    1/1     Running             0          2s
```

삭제한 Pod가 `Terminating`으로 사라지자마자, K8s가 곧바로 새 이름의 Pod를 `Pending` →
`ContainerCreating` → `Running` 순서로 자동 생성해서 원래 개수(3개)를 다시 맞추는 것을
확인하세요. 아무도 손대지 않았는데 스스로 복구된 것 — 이것이 오늘 배운 자가치유입니다. 확인이
끝나면 `kill %1`로 백그라운드 watch를 종료해도 됩니다.
