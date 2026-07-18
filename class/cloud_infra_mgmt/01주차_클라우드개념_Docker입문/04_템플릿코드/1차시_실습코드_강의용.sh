#!/usr/bin/env bash
# ============================================================
# 클라우드인프라관리 1주차 1차시 실습코드 [강의용]
# 용도: 교수자 Killercoda 라이브 시연 + VM 점검 (10분 시연 진행 순서)
# ============================================================

# ── [Killercoda] 첫 Docker 명령어 3종 ─────────────────────────
docker run hello-world
docker images
docker ps -a

# ── [로컬 VM] 0주차 환경 최종 점검 ────────────────────────────
multipass shell cloud-lab
docker --version
git --version
