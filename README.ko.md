# purrfect-claude 🐱

> Claude Code 전역 설정 — 스마트 알림, 고양이 테마, 개발자 친화적 기본값.

## 기능

### 🔔 스마트 알림
상황별로 다른 알림과 소리:

| 상황 | 메시지 | 소리 |
|---|---|---|
| 작업 완료 (30초+) | ✅ Task complete (걸린 시간) | Purr |
| 승인 대기 중 | ⚠️ Waiting for your approval | Sosumi |
| 에러 발생 | ❌ Error in [tool] | Basso |
| 빌트인 알림 | 🐾 [메시지] | Purr |

필요할 때만 알림 — 알림 폭탄 없음.

### 🐾 고양이 테마
- 스피너: `Purring...` / `Paw-sing...` / `Kneading the code...`
- 고양이 드립 로딩 팁
- 세션 시작 시 ASCII 고양이
- 커스텀 알림 아이콘 + 소리 (직접 교체 가능)

### ⚙️ 개발자 기본값 (CLAUDE.md)
- 짧고 핵심만 답변
- 불필요한 주석/추상화 금지
- 성능 고려한 코드
- README 생성 규칙

### 🔧 커스텀 명령어
`/show-global-config` — 현재 전역 Claude 설정 한눈에 보기.

---

## 사용 방법

### A — 그냥 클론해서 설치
```bash
git clone -b korean https://github.com/leesohyeon96/purrfect-claude.git
cd purrfect-claude
chmod +x install.sh
./install.sh
```

### B — Fork해서 커스터마이즈 (추천)

1. GitHub에서 **Fork** (우측 상단 버튼)
2. **내 fork 클론**
```bash
git clone -b korean https://github.com/YOUR_USERNAME/purrfect-claude.git
cd purrfect-claude
```
3. **커스터마이즈** (아래 참고)
4. **설치**
```bash
chmod +x install.sh
./install.sh
```

---

## 커스터마이즈

**알림 아이콘** — PNG로 교체:
```bash
cp 내이미지.png assets/icon.png
```

**알림 소리** — mp3/mp4/wav로 교체:
```bash
cp 내소리.mp3 assets/meow.mp4
```

**냐옹 소리 on/off** — `settings.json` 수정:
```json
"env": {
  "PURRFECT_SOUND": "off"
}
```

**CLAUDE.md 규칙** — 설치 전 `CLAUDE.md` 편집하거나, 설치 후:
```bash
open ~/.claude/CLAUDE.md
```

**나중에 규칙 추가** — Claude한테 말하면 됨:
> "CLAUDE.md에 ~규칙 추가해줘"

---

## 요구사항
- macOS
- [Claude Code](https://claude.ai/code)
- Homebrew (`terminal-notifier` 자동 설치됨)

> **참고:** macOS 제약으로 알림 왼쪽 아이콘은 앱 번들 고정.
> 고양이 이미지는 알림 오른쪽에 표시됨.

---

## English version
```bash
git clone https://github.com/leesohyeon96/purrfect-claude.git
```
