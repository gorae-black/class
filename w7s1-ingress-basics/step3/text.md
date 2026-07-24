`kubectl explain`은 어떤 K8s 리소스가 어떤 필드로 구성되어 있는지 문서 없이 터미널에서 바로
확인할 수 있는 명령어입니다. Ingress 리소스가 어떤 구조인지 살펴보겠습니다.

```
kubectl explain ingress
```

**실행 결과 예시**

```
KIND:     Ingress
VERSION:  networking.k8s.io/v1

DESCRIPTION:
     Ingress is a collection of rules that allow inbound connections to reach
     the endpoints defined by a backend...

FIELDS:
   apiVersion	<string>
   kind	<string>
   metadata	<Object>
   spec	<Object>
   status	<Object>
```

`spec` 필드 안에 오늘 배운 라우팅 규칙(`rules`)이 들어갑니다. `kubectl explain ingress.spec`을
이어서 실행해보면 `rules`, `tls` 같은 하위 필드도 볼 수 있습니다. 오늘은 이렇게 구조를 확인하는
것까지만 하고, 실제로 이 필드들을 채운 YAML을 작성해서 적용하는 것은 다음 2차시에 진행합니다.
