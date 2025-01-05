#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0" 2>/dev/null)" 2>/dev/null)"
echo "= create rootfs.tar.gz"
tar -cf rootfs.tar -C . rootfs
echo "= create archlinux package"
makepkg -fsCc --noconfirm
rm -rf *rootfs*.tar
