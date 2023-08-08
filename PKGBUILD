# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='runimage-rootfs'
pkgver='0.39.1'
pkgrel='1'
pkgbase="$pkgname"
pkgdesc='Rootfs configuration for RunImage container'
url="https://github.com/VHSgunzo/runimage-rootfs"
arch=('any')
license=('MIT')
conflicts=(
  runimage-rootfs-lwrun
  runimage-rootfs-portarch
)
source=("$pkgname"::"git+file://$PWD")
sha256sums=('SKIP')

package() {
    install -dm644 "$pkgdir/var"
    cp -ar --no-preserve=ownership "$srcdir/rootfs" "$pkgdir/var/rootfs"
}
