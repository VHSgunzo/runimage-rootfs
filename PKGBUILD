# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='runimage-rootfs'
pkgver='0.39.1'
pkgrel='2'
pkgdesc='Rootfs configuration for RunImage container'
url="https://github.com/VHSgunzo/runimage-rootfs"
license=('MIT')
arch=('any')
source=('rootfs.tar.gz')
sha256sums=('SKIP')
provides=('filesystem=2023.01.31')
conflicts=(
    'filesystem'
    'runimage-rootfs-lwrun'
    'runimage-rootfs-portarch'
)
# install='rootfs.install'

package() {
    cp -arTf --no-preserve=ownership "$srcdir/rootfs" "$pkgdir"
}
