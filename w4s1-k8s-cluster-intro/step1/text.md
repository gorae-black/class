`kubectl get nodes`로 이 클러스터에 어떤 노드들이 있는지 확인합니다.

```
kubectl get nodes
```

**실행 결과 예시**

```
NAME           STATUS   ROLES           AGE   VERSION
controlplane   Ready    control-plane   5m    v1.30.1
node01         Ready    <none>          5m    v1.30.1
```

STATUS가 둘 다 `Ready`이면 두 노드 모두 정상적으로 클러스터에 참여해 있다는 뜻입니다. ROLES 칸의
`control-plane`은 지난 슬라이드에서 배운 '두뇌' 역할을 `controlplane` 노드가 맡고 있다는 표시이고,
`node01`의 `<none>`은 이 노드가 '일꾼(Worker)' 역할이라는 뜻입니다.
