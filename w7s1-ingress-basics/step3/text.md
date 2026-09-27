`kubectl explain`은 어떤 K8s 리소스가 어떤 필드로 구성되어 있는지 문서 없이 터미널에서 바로
확인할 수 있는 명령어입니다. Ingress 리소스가 어떤 구조인지 살펴보겠습니다.

```
kubectl explain ingress
```

**실행 결과 예시**

```
GROUP:      networking.k8s.io
KIND:       Ingress
VERSION:    v1

DESCRIPTION:
    Ingress is a collection of rules that allow inbound connections to reach the
    endpoints defined by a backend. An Ingress can be configured to give
    services externally-reachable urls, load balance traffic, terminate SSL,
    offer name based virtual hosting etc.

FIELDS:
  apiVersion    <string>
    APIVersion defines the versioned schema of this representation of an object.
    ...

  kind  <string>
    ...

  metadata      <ObjectMeta>
    ...

  spec  <IngressSpec>
    spec is the desired state of the Ingress. More info:
    ...

  status        <IngressStatus>
    ...
```

각 필드 아래에 설명이 길게 붙어 나오니, 화면을 위로 올려 `FIELDS:` 부분에서 필드 이름만 확인하면 됩니다.

`spec` 필드 안에 오늘 배운 라우팅 규칙(`rules`)이 들어갑니다. `kubectl explain ingress.spec`을
이어서 실행해보면 `rules`, `tls` 같은 하위 필드도 볼 수 있습니다. 오늘은 이렇게 구조를 확인하는
것까지만 하고, 실제로 이 필드들을 채운 YAML을 작성해서 적용하는 것은 다음 2차시에 진행합니다.
