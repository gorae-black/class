# 0주차 - 실습 VM 설치 가이드

클라우드/리눅스를 처음 다루더라도 걱정하지 마세요. 이 강좌에서 쓸 리눅스 환경은
교수자가 미리 전부 준비해 두었습니다. 여러분은 아래 순서만 따라오면 됩니다.

## 준비물

- Windows PC (디스크 여유 공간 15GB 이상, RAM 8GB 이상 권장)
- LMS에서 받은 `cloud-lab-vm.zip` 파일

## 설치 순서

1. **VMware Workstation Player 설치**
   VMware 공식 홈페이지에서 Windows용 설치 파일을 받아 설치합니다. (무료)

2. **압축 해제**
   LMS에서 받은 `cloud-lab-vm.zip`을 원하는 위치에 압축 해제합니다.
   (`cloud-lab.vmx`, `cloud-lab.vmdk` 두 파일이 담긴 `cloud-lab-vm` 폴더가 생깁니다.)

3. **VM 열기**
   VMware Workstation Player를 실행하고 **Open a Virtual Machine**을 클릭한 뒤,
   압축 해제한 폴더 안의 `cloud-lab.vmx` 파일을 선택합니다.

4. **VM 실행**
   **Play virtual machine**을 클릭합니다. 잠시 후 검은 화면에 로그인 프롬프트가 뜹니다.

5. **로그인**
   ```
   cloud-lab login: student
   Password: a1234
   ```
   (비밀번호를 입력해도 화면에 아무것도 보이지 않는 게 정상입니다.)

## 환경 확인

로그인 후 아래 명령어를 입력해 정상 설치를 확인합니다.

```
docker --version
kubectl version --client
```

minikube는 설치만 되어 있을 뿐 자동으로 실행되어 있지 않으므로, 아래처럼 `minikube start`으로
먼저 클러스터를 기동한 뒤 상태를 확인해야 합니다. (VM을 껐다 켤 때마다 매번 다시 실행해야 합니다.)

```
minikube start
minikube status
```

`docker --version`과 `kubectl version --client`는 오류 없이 버전 정보가 출력되면 되고,
`minikube status`는 host, kubelet, apiserver가 모두 **Running**으로 나와야 준비 완료입니다.
stopped로 나온다면 `minikube start`를 먼저 실행하지 않았기 때문이니, `minikube start` 실행 후
다시 확인하세요.

## VM 종료하기

실습을 마치고 VM을 끌 때는 반드시 아래처럼 정상 종료하세요. 전원 강제 종료(Power Off)는 다음
실행 시 오류를 일으킬 수 있으니 피해야 합니다.

- **VM 안에서 명령어로 종료 (권장)**
  터미널에 로그인된 상태에서 아래 명령어를 입력합니다.

  ```
  sudo shutdown -h now
  ```

  (비밀번호 `a1234`를 물어보면 입력합니다. 화면에 아무것도 안 보이는 게 정상입니다.)

- **VMware Workstation Player 메뉴에서 종료**
  Player → Power → Shut Down Guest를 클릭합니다. VM 내부로 종료 신호를 보내 정상 종료됩니다.

**주의:** Player → Power → Power Off(강제 종료)는 전원 코드를 뽑는 것과 같아서 파일시스템이
손상될 수 있으니 급한 경우가 아니면 사용하지 마세요. 다음에 VM을 다시 켜서 실습을 이어갈 때는
로그인 후 `minikube start`를 다시 실행해야 `minikube status`가 Running으로 나옵니다.

## 이 VM에 이미 설치되어 있는 것들

| 구분 | 내용 |
|---|---|
| OS | Ubuntu 24.04 LTS |
| 컨테이너 | Docker + Docker Compose |
| 오케스트레이션 | minikube, kubectl (1~7주차 실습 전체 대응) |
| 기본 도구 | git, curl, vim, nano, htop |

1~3주차(Docker)와 4~7주차(Kubernetes) 실습에 필요한 모든 도구가 이미 설치되어
있으므로, 학기 중 별도 설치 없이 이 VM 하나로 0~7주차 실습을 진행합니다.

## 학기 중 필요한 계정 미리 보기

지금 당장 가입할 필요는 없지만, 학기 중 아래 세 가지 외부 서비스 계정을 만들게 됩니다. 동일한
이메일 주소로 가입해두면 이후 관리가 편합니다.

| 서비스 | 가입 시점 | 용도 |
|---|---|---|
| GitHub | 3주차 2차시 | 소스 코드 저장(9~13주차까지 계속 재사용) |
| Docker Hub | 3주차 2차시 | 빌드한 이미지 push/pull(13주차 파이프라인에서도 재사용) |
| Terraform Cloud | 10주차 2차시 | 원격 State 관리(GitHub 계정으로 가입하면 편리) |

각 시점에 단계별 가입 가이드를 별도로 제공하니, 지금은 이런 것이 있다는 정도만 기억해두면
됩니다. **Killercoda는 가입이 필요 없습니다** — 매 차시 제공되는 링크만 클릭하면 바로 접속됩니다.

## 문제가 생겼다면

- VM이 켜지지 않는다 → BIOS에서 가상화(Intel VT-x/AMD-V) 옵션이 켜져 있는지 확인하세요.
- 로그인이 안 된다 → 아이디/비밀번호는 `student` / `a1234`로 통일되어 있습니다.
- minikube status가 stopped로 나온다 → `minikube start`를 실행하지 않았거나, VM을 재부팅해
  클러스터가 다시 정지된 것입니다. VM을 켤 때마다 `minikube start`를 먼저 실행한 뒤 상태를
  확인하세요.
- 그 외 문제는 LMS Q&A 게시판에 캡처와 함께 남겨주세요.
