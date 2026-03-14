#!/bin/bash
# =======================================================
# pkg 빌드 스크립트 - 이 파일을 macOS에서 실행하세요
# 실행: chmod +x build_pkg.sh && ./build_pkg.sh
# =======================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMPONENT_PKG="$SCRIPT_DIR/build/TerutenUninstaller.pkg"
FINAL_PKG="$SCRIPT_DIR/TerutenMacWebServer_Uninstaller.pkg"

mkdir -p "$SCRIPT_DIR/build"

echo "[1/2] 컴포넌트 패키지 빌드 중..."

pkgbuild \
    --nopayload \
    --scripts "$SCRIPT_DIR/scripts" \
    --identifier "com.tpwls30.teruten-uninstaller" \
    --version "1.0.0" \
    "$COMPONENT_PKG"

echo "[2/2] 배포 패키지 생성 중 (타이틀/설명 적용)..."

productbuild \
    --distribution "$SCRIPT_DIR/distribution.xml" \
    --resources "$SCRIPT_DIR/resources" \
    --package-path "$SCRIPT_DIR/build" \
    "$FINAL_PKG"

echo ""
echo "✓ 빌드 완료: $FINAL_PKG"
echo ""
echo "실행 방법:"
echo "  Finder에서 더블클릭  또는"
echo "  sudo installer -pkg \"$FINAL_PKG\" -target /"
