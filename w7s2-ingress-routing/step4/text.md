Ingress 컨트롤러는 NodePort로 노출되어 있으므로, 그 포트로 `/ko`, `/en` 경로를 각각 요청해서 정말
다른 응답이 오는지 확인합니다.

```
NODE_PORT=$(kubectl get svc -n ingress-nginx ingress-nginx-controller -o=jsonpath='{.spec.ports[0].nodePort}')
curl http://localhost:$NODE_PORT/ko
curl http://localhost:$NODE_PORT/en
```

**실행 결과 예시**

```
안녕하세요, 한국어(ko) 서비스입니다
Hello, this is the English (en) service
```

같은 주소, 같은 포트로 요청했는데 경로(`/ko` vs `/en`)만 다르게 줬을 뿐인데 완전히 다른 응답이
왔습니다. 이게 바로 Ingress의 경로 기반 라우팅입니다 — path 규칙에 따라 요청이 서로 다른 Service,
서로 다른 Pod로 갈라져 처리된 것입니다.
