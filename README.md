# Teruten Mac Web Server Uninstaller

**TerutenMacWebServer**를 macOS에서 완전히 제거하는 pkg 언인스톨러입니다.

![버전](https://img.shields.io/badge/version-v1.0.0-blue)
![플랫폼](https://img.shields.io/badge/platform-macOS-lightgrey)
![라이선스](https://img.shields.io/badge/license-Non--Commercial-red)

---

## 제거 항목

| 대상 | 경로 |
|------|------|
| 앱 | `/Applications/TerutenMacWebServer.app` |
| 플러그인 | `/Library/Internet Plug-Ins/` 전체 |
| 플러그인 (사용자) | `~/Library/Internet Plug-Ins/` 전체 |
| LaunchAgent | `/Library/LaunchAgents/com.teruten.*.plist` |
| LaunchAgent (사용자) | `~/Library/LaunchAgents/com.teruten.*.plist` |

---

## 사용 방법

### 1. pkg 다운로드 (권장)

[Releases](../../releases) 페이지에서 최신 버전의 `TerutenMacWebServer_Uninstaller.pkg`를 다운로드합니다.

### 2. 직접 빌드

```bash
git clone https://github.com/tpwls30/teruten-uninstaller.git
cd teruten-uninstaller
chmod +x build_pkg.sh
./build_pkg.sh
```

빌드 후 생성된 `TerutenMacWebServer_Uninstaller.pkg`를 실행합니다.

> **참고:** `pkgbuild` 및 `productbuild`는 macOS 전용 도구입니다. Xcode Command Line Tools가 설치되어 있어야 합니다.
> ```bash
> xcode-select --install
> ```

---

## 동작 순서

1. 실행 중인 관련 프로세스 강제 종료
2. LaunchAgent 서비스 종료 및 plist 파일 삭제
3. 앱 및 플러그인 파일 삭제
4. 재부팅 여부 확인 (예 / 아니오)

---

## 요구 사항

- macOS 10.14 Mojave 이상
- 관리자 권한

---

## 라이선스

이 프로젝트는 저작권 표시 조건 하에 비상업적 용도로 자유롭게 사용할 수 있습니다.
자세한 내용은 [LICENSE](./LICENSE) 파일을 참고하세요.
