`kubectl cluster-info`로 Control Plane이 어느 주소에서 실행되고 있는지 확인합니다.

```
kubectl cluster-info
```

**실행 결과 예시**

```
Kubernetes control plane is running at https://172.30.1.2:6443
CoreDNS is running at https://172.30.1.2:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
```

(IP 주소는 실습 환경마다 다르게 나올 수 있습니다.) 이 주소가 바로 방금 전 `kubectl get nodes`에서
본 그 노드 안에서, Control Plane이 실제로 응답을 기다리고 있는 곳입니다.
