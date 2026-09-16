#!/bin/bash

# Builds BeardieMusic in Release and packages it as a DMG.
# Originally based on http://asmaloney.com/2013/07/howto/packaging-a-mac-os-x-application-using-a-dmg/

set -e

# make sure we are in the correct dir when we double-click a .command file
dir=${0%/*}
if [ -d "$dir" ]; then
  cd "$dir"
fi

APP_NAME="BeardieMusic"
VERSION=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" BeardieMusic/BeardieMusic-Info.plist)

VOL_NAME="${APP_NAME}-${VERSION}"
DMG_FINAL="${VOL_NAME}.dmg"

CWD=`pwd`
BUILD_DIR="${CWD}/build/Release"
STAGING_DIR="${CWD}/build/packaged"

echo "Cleaning."
rm -rf "${STAGING_DIR}" "${DMG_FINAL}"

echo "Building ${APP_NAME} ${VERSION}."
# SYMROOT puts the product in build/Release rather than DerivedData, so
# BUILD_DIR above can find it.
xcodebuild -workspace BeardieMusic.xcworkspace \
           -scheme BeardieMusic \
           -configuration Release \
           SYMROOT="${CWD}/build" \
           "$@"

echo "Staging."
mkdir -p "${STAGING_DIR}"
cp -rpf "${BUILD_DIR}/${APP_NAME}.app" "${STAGING_DIR}"
# so the DMG window offers a drag-to-install target
ln -s /Applications "${STAGING_DIR}/Applications"

echo "Creating ${DMG_FINAL}."
hdiutil create -volname "${VOL_NAME}" \
               -srcfolder "${STAGING_DIR}" \
               -ov -format UDZO \
               "${DMG_FINAL}"

echo "Cleaning up."
rm -rf "${STAGING_DIR}"

echo "Done: ${DMG_FINAL}"
