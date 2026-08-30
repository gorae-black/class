여기까지 오늘의 Killercoda 실습입니다. 수고하셨습니다!

**다음 순서**

개인 로컬 VM(cloud-lab)에서 동일하게 `app.py`와 `Dockerfile`을 작성하고, `docker build` →
`docker run` → `curl localhost:5000`까지 실행해서 `Hello, Cloud!`가 나오는 것을 확인한 뒤
캡처해주세요.

이 폴더를 1차시에 만든 GitHub 저장소(`cloud-lab`)와 아직 연결하지 않았다면 먼저 연결하세요
(README로 초기화했다면 `git pull origin main --allow-unrelated-histories`를 먼저 실행).

```
git init
git remote add origin https://github.com/{본인_GitHub_사용자명}/cloud-lab.git
git branch -M main
```

연결 후 `app.py`, `Dockerfile`을 `git add`, `git commit`, `git push -u origin main`으로
올려주세요.

GitHub 저장소는 반드시 **Public**으로 설정되어 있어야 확인할 수 있습니다.

Docker Hub에 이미지를 올리는 것은 다음 3차시에 이어집니다.
