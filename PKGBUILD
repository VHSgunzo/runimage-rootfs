# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='runimage-rootfs'
pkgver='0.40.1'
pkgrel='1'
pkgdesc='Rootfs configuration for RunImage container'
url="https://github.com/VHSgunzo/runimage-rootfs"
license=('MIT')
arch=('x86_64' 'aarch64')
source=('rootfs.tar' "mirrorlist-$CARCH" "pacman-$CARCH.conf")
sha256sums=('SKIP' 'SKIP' 'SKIP')
provides=('filesystem=2024.11.21')
depends=('runimage-utils')
conflicts=(
    'runimage-rootfs-lwrun'
    'runimage-rootfs-portarch'
)
install='rootfs.install'

package() {
    find "${srcdir}" -type f -name '.keep' -exec rm -f {} \;
    install -Dm644 "mirrorlist-$CARCH" "$pkgdir/var/rootfs/etc/pacman.d/mirrorlist"
    install -Dm644 "pacman-$CARCH.conf" "$pkgdir/var/rootfs/etc/pacman.conf"
    cp -arTf --no-preserve=ownership "$srcdir/rootfs" "$pkgdir"
    if [ "$CARCH" == 'aarch64' ]
        then rm -f "$pkgdir/var/rootfs/lib32"
    fi
}
