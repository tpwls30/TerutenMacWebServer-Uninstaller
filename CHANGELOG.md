# Changelog

이 프로젝트의 모든 변경 사항을 기록합니다.
형식은 [Keep a Changelog](https://keepachangelog.com/ko/1.0.0/)를 따릅니다.

## [v1.0.2] - 2026-03-15

### 추가
- 키체인에 등록된 Teruten, localhost 인증서 신뢰 설정 제거

---

## [v1.0.1] - 2026-03-15

### 수정
- Internet Plug-Ins 폴더 전체 삭제에서 관련 파일만 개별 삭제하도록 변경

---

## [v1.0.0] - 2026-03-15

### 최초 릴리즈

- 실행 중인 관련 프로세스 강제 종료 (WcbManager, TerutenMacWebServer, TerutenESAlert, TerminateAlert)
- LaunchAgent 서비스 종료 및 plist 파일 삭제
- `/Applications/TerutenMacWebServer.app` 삭제
- `/Library/Internet Plug-Ins/` 및 `~/Library/Internet Plug-Ins/` 내용 전체 삭제
- 작업 완료 후 재부팅 여부 확인 다이얼로그 표시
- pkg 설치 화면에 Pretendard 폰트 및 제거 항목 안내 표시
