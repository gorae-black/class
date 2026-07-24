이제 `/ko`로 오는 요청은 `ko-app`으로, `/en`으로 오는 요청은 `en-app`으로 보내는 Ingress YAML을
작성합니다.

```
cat <<'EOF' > ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: path-routing-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  ingressClassName: nginx
  rules:
  - http:
      paths:
      - path: /ko
        pathType: Prefix
        backend:
          service:
            name: ko-app
            port:
              number: 80
      - path: /en
        pathType: Prefix
        backend:
          service:
            name: en-app
            port:
              number: 80
EOF
kubectl apply -f ingress.yaml
```

**실행 결과 예시**

```
ingress.networking.k8s.io/path-routing-ingress created
```

`kubectl get ingress`로 방금 만든 `path-routing-ingress`가 목록에 보이는지 확인하세요. `rules`
아래 `/ko`, `/en` 두 경로가 각각 다른 `backend` Service를 가리키고 있다는 점이 오늘 실습의
핵심입니다.
