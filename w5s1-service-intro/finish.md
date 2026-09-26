여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 VM에서 `minikube start` 후 `myapp` Deployment가 계속 떠 있는지 확인하세요(4주차 실습 이후
지웠다면 Step 1과 동일한 `deployment.yaml`로 다시 만드세요). `kubectl get pods -o wide`로 Pod IP를
캡처해두고, Pod 하나를 지워본 뒤(`kubectl delete pod {파드 이름}`) 새로 생긴 Pod의 IP가 바뀌는지
다시 확인해보세요. 다음 시간에 이 Deployment에 Service를 연결하는 실습이 바로 이어지니,
Deployment를 지우지 마세요. (이번 차시는 확인 성격의 실습으로, 별도 제출은 없습니다.)
