`kubectl explain ingress.spec.rules`로 라우팅 규칙 필드를 더 깊이 확인합니다.

```
kubectl explain ingress.spec.rules
```

**실행 결과 예시**

```
GROUP:      networking.k8s.io
KIND:       Ingress
VERSION:    v1

FIELD: rules <[]IngressRule>


DESCRIPTION:
    rules is a list of host rules used to configure the Ingress. If unspecified,
    or no rule matches, all traffic is sent to the default backend.
    ...

FIELDS:
  host  <string>
    host is the fully qualified domain name of a network host, as defined by RFC
    3986. ...

  http  <HTTPIngressRuleValue>
    <no description>
```

`FIELDS:` 아래에 `host`, `http` 같은 필드 이름이 보이면 정상입니다. 다음 2차시에 이 필드들을 직접 채워보게 됩니다.
