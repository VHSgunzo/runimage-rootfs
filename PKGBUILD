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
    install='rootfs.install'
    conflicts=(
        'runimage-rootfs-lwrun'
        'runimage-rootfs-portarch'
    )
    cp -arTf --no-preserve=ownership "$srcdir/rootfs/var" "$pkgdir/var"
}

package_runimage-rootfs-lwrun() {
    install='rootfs-lwrun.install'
    conflicts=(
        'runimage-rootfs'
        'runimage-rootfs-portarch'
    )
    cp -arTf --no-preserve=ownership "$srcdir/rootfs/var" "$pkgdir/var"
    cp -arTf --no-preserve=ownership "$srcdir/rootfs-lwrun/var" "$pkgdir/var"
}

package_runimage-rootfs-portarch() {
    install='rootfs-portarch.install'
    conflicts=(
        'runimage-rootfs'
        'runimage-rootfs-lwrun'
    )
    cp -arTf --no-preserve=ownership "$srcdir/rootfs/var" "$pkgdir/var"
    cp -arTf --no-preserve=ownership "$srcdir/rootfs-portarch/var" "$pkgdir/var"
}
