`docker images`는 현재 로컬에 저장된(다운로드된) 이미지 목록을 보여줍니다.

이미지는 컨테이너를 만들기 위한 "설계도(붕어빵 틀)"라는 것을 기억하세요.

```
docker images
```

**실행 결과 예시**

```
IMAGE                ID             DISK USAGE   CONTENT SIZE   EXTRA
hello-world:latest   e2ac70e7319a       10.1kB             0B    U
```

> Docker 버전에 따라 컬럼 구성이 다르게 보일 수 있습니다 (이 실습 환경은 Docker 29.1.3 기준이며,
> 예전 버전은 `REPOSITORY TAG IMAGE ID CREATED SIZE` 형식으로 나옵니다). 어떤 포맷이든 상관없이
> `hello-world` 이미지가 목록에 있고, 용량이 몇 KB 수준으로 매우 작다는 점에 주목하세요 —
> 컨테이너 이미지가 왜 가상머신(VM)보다 훨씬 가벼운지 직접 확인한 것입니다.
