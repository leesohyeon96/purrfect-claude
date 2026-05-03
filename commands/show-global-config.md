---
description: 현재 전역 Claude 설정 현황 요약
allowed-tools: Read
---

다음 파일들을 읽고 현재 전역 설정 현황을 한국어로 요약해줘.

1. `~/.claude/settings.json` — 플러그인 목록(각 역할 한 줄), 훅 목록(언제 동작하는지)
2. `~/.claude/CLAUDE.md` — 설정된 규칙 목록

출력 형식:
- 섹션별로 나눠서 보여줄 것 (플러그인 / 훅 / CLAUDE.md 규칙)
- 각 항목은 한 줄 설명 포함
- 프로젝트 설정(`.claude/settings.json`)이 있으면 전역 설정과 충돌하는 항목도 표시
