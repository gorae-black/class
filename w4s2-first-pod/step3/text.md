`kubectl describe pod {이름}`으로 이 Pod의 상세 상태와 무슨 일이 있었는지(이벤트), 그리고 어느
노드에 배치됐는지 확인합니다.

```
kubectl describe pod mypod
```

**실행 결과 예시**

```
Name:             mypod
Node:             node01/172.30.1.3
Status:           Running
IP:               10.244.1.5
...
Events:
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               -------
  Normal  Scheduled  30s   default-scheduler  Successfully assigned default/mypod to node01
  Normal  Pulled     29s   kubelet            Container image "nginx" already present on machine
  Normal  Created    29s   kubelet            Created container mypod
  Normal  Started    29s   kubelet            Started container mypod
```

결과가 굉장히 길게 나오는 것이 정상입니다. 지금은 `Node` 항목(이 Pod가 어느 노드에 배치됐는지)과
맨 아래 `Events` 섹션(Scheduled → Pulled → Created → Started 순서로 잘 진행됐는지) 정도만
눈여겨보면 충분합니다. `Node`가 `controlplane`이 아니라 `node01`인 것에 주목하세요 — 일반 Pod는
'두뇌' 역할인 Control Plane이 아니라 '일꾼' 역할인 Worker Node에 배치됩니다.
