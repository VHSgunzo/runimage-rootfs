# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgbase='runimage-rootfs'
pkgname=(
  'runimage-rootfs'
  'runimage-rootfs-lwrun'
  'runimage-rootfs-portarch'
)
pkgver='0.39.1'
pkgrel='1'
pkgdesc='Rootfs configuration for RunImage container'
url="https://github.com/VHSgunzo/runimage-rootfs"
license=('MIT')
arch=('any')
source=('rootfs.tar.gz')
sha256sums=('SKIP')

package_runimage-rootfs() {
    # install='base.install'
    conflicts=(
        'runimage-rootfs-lwrun'
        'runimage-rootfs-portarch'
    )
    cp -arTf --no-preserve=ownership "$srcdir/base" "$pkgdir"
}

package_runimage-rootfs-lwrun() {
    # install='lwrun.install'
    conflicts=(
        'runimage-rootfs'
        'runimage-rootfs-portarch'
    )
    cp -arTf --no-preserve=ownership "$srcdir/base" "$pkgdir"
    cp -arTf --no-preserve=ownership "$srcdir/lwrun" "$pkgdir"
}

package_runimage-rootfs-portarch() {
    # install='portarch.install'
    conflicts=(
        'runimage-rootfs'
        'runimage-rootfs-lwrun'
    )
    cp -arTf --no-preserve=ownership "$srcdir/base" "$pkgdir"
    cp -arTf --no-preserve=ownership "$srcdir/portarch" "$pkgdir"
}
