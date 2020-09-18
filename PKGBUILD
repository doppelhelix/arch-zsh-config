# Maintainer: Chrysostomus @forum.manjaro.org

pkgname=manjaro-zsh-config
pkgver=0.13
pkgrel=1
pkgdesc="Zsh configuration for manjaro"
arch=(any)
url="https://github.com/Chrysostomus/$pkgname"
_gitcommit=034710e6700e03cf5e5ec06431755256227fec01
license=('MIT')
conflicts=('grml-zsh-config')
depends=('zsh-autosuggestions'
	'zsh-syntax-highlighting'
	'zsh-completions'
	'zsh-history-substring-search'
	'zsh'
	'pkgfile')
source=("$pkgname.tar.gz::$url/archive/$_gitcommit.tar.gz")
md5sums=('08d9620ea9046bb0339b924fd2f5858d')

package() {
	cd ${srcdir}
	install -D -m644 $srcdir/$pkgname-$_gitcommit/.zshrc ${pkgdir}/etc/skel/.zshrc
	install -D -m644 $srcdir/$pkgname-$_gitcommit/manjaro-zsh-config ${pkgdir}/usr/share/zsh/manjaro-zsh-config
	install -D -m644 $srcdir/$pkgname-$_gitcommit/manjaro-zsh-prompt ${pkgdir}/usr/share/zsh/manjaro-zsh-prompt
	install -D -m644 $srcdir/$pkgname-$_gitcommit/command-not-found.zsh ${pkgdir}/usr/share/zsh/functions/command-not-found.zsh
	install -D -m644 $srcdir/$pkgname-$_gitcommit/rootzshrc ${pkgdir}/root/.zshrc
	mkdir -p $pkgdir/usr/share/zsh/scripts
	cp -r $srcdir/$pkgname-$_gitcommit/base16-shell $pkgdir/usr/share/zsh/scripts
	chmod a+x $pkgdir/usr/share/zsh/scripts/base16-shell/*
}
