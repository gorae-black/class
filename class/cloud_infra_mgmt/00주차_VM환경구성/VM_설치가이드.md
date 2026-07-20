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
minikube status
```

세 명령어 모두 오류 없이 버전/상태 정보가 출력되면 준비 완료입니다.

## 이 VM에 이미 설치되어 있는 것들

| 구분 | 내용 |
|---|---|
| OS | Ubuntu 24.04 LTS |
| 컨테이너 | Docker + Docker Compose |
| 오케스트레이션 | minikube, kubectl (1~7주차 실습 전체 대응) |
| 기본 도구 | git, curl, vim, nano, htop |

1~3주차(Docker)와 4~7주차(Kubernetes) 실습에 필요한 모든 도구가 이미 설치되어
있으므로, 학기 중 별도 설치 없이 이 VM 하나로 0~7주차 실습을 진행합니다.

## 문제가 생겼다면

- VM이 켜지지 않는다 → BIOS에서 가상화(Intel VT-x/AMD-V) 옵션이 켜져 있는지 확인하세요.
- 로그인이 안 된다 → 아이디/비밀번호는 `student` / `a1234`로 통일되어 있습니다.
- 그 외 문제는 LMS Q&A 게시판에 캡처와 함께 남겨주세요.
