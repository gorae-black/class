여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다! 오늘로 6주차가 모두 끝났습니다.

**다음 순서**

개인 VM에서 `minikube start` 후 `kubectl get pv,pvc`로 2차시에 만든 `mysql-pv`, `mysql-pvc`가 `Bound`
상태로 남아 있는지 확인하세요(없다면 Step 1과 동일한 `pv.yaml`, `pvc.yaml`을 다시 적용하세요). 그다음
동일한 절차로 MySQL을 배포하고, Pod 삭제 **전**의 SELECT 결과와 삭제 **후** 새 Pod에서의 SELECT 결과를
비교해 데이터가 동일한지 확인해보세요.

**다음 주 예고**: 7주차에서는 여러 Service를 하나의 진입점으로 묶어주는 **Ingress**, 그리고 K8s가 장애
상황에서 스스로 복구하는 **자가치유** 능력을 배웁니다.
