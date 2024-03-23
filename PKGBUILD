# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='runimage-rootfs'
pkgver='0.40.1'
pkgrel='1'
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
    find "${srcdir}" -type f -name '.keep' -exec rm -f {} \;
    cp -arTf --no-preserve=ownership "$srcdir/rootfs" "$pkgdir"
}
