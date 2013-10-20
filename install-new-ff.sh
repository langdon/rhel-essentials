#!/bin/sh
set -x
trap read debug

FF_ROOT_DIR=/opt/firefox-versions
FF_VERSION=$1
FF_DIR_NAME=$FF_ROOT_DIR/firefox-${FF_VERSION/./-}
FF_REMOTE_FILE_NAME=firefox-$FF_VERSION.tar.bz2

curl -o $FF_ROOT_DIR/$FF_REMOTE_FILE_NAME http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest-beta/linux-x86_64/en-US/$FF_REMOTE_FILE_NAME
tar -xf $FF_ROOT_DIR/$FF_REMOTE_FILE_NAME
mv $FF_ROOT_DIR/firefox $FF_DIR_NAME
cp -Rs $FF_ROOT_DIR/plugins $FF_DIR_NAME/browser/
cp -Rs $FF_ROOT_DIR/plugins-wrapped $FF_DIR_NAME/
ln -sf $FF_DIR_NAME/firefox-bin /opt/firefox

