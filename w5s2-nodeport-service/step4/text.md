이 Killercoda 클러스터는 노드가 하나뿐이므로, 이 노드 자신에게 `localhost`와 방금 확인한 NodePort
번호로 curl을 보내면 바로 접속됩니다. 아래 `{NodePort 번호}` 자리에 앞 단계에서 확인한 숫자를
넣어 실행하세요.

```
curl localhost:{NodePort 번호}
```

**실행 결과 예시**

```
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
...
<h1>Welcome to nginx!</h1>
...
</html>
```

nginx 기본 환영 페이지 HTML이 출력되면 성공입니다. Pod의 IP를 전혀 몰라도, Service가 알아서 뒤에
있는 Pod 중 하나로 요청을 전달해준 것입니다 — 1차시에서 확인했던 "Pod IP가 계속 바뀌는" 문제가
Service 덕분에 더 이상 문제가 되지 않는다는 것을 직접 확인한 셈입니다.
