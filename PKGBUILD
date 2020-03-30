# Maintainer Pierre-Yves Savioz <savioz.py@net-c.com>

# Maintainer Pierre-Yves Savioz <savioz.py@net-c.com>

pkgname="vstax"
_year="2019"
pkgver="${_year}_1.0.8"
pkgrel="274"
pkgdesc="Software to fill the tax forms of the canton of Valais, Switzerland"
url="http://www.vs.ch/vstax"
license=('unknown')
arch=('i686' 'x86_64')
depends=('shared-mime-info' 'desktop-file-utils' 'okular')
install="vstax.install"
[ "${CARCH}" = "i686" ] && _CARCH='i386'
[ "${CARCH}" = "x86_64" ] && _CARCH='amd64'
source=("https://sftp.vs.ch/${pkgname}/${_year}/${pkgname}${pkgver}-${pkgrel}_${_CARCH}.deb")
sha256sums=('f76d643af1bcd55e6eb0b1f22ae7fe6a94681ec2e1210c4445c0f1cbd70e6e92')
[ "${CARCH}" = "x86_64" ] && sha256sums[0]='e8dfc49c200426adea05b7b7ba3535142b22e47a37985513b417f82110180462'


prepare() {
    cd "${srcdir}/"

    # Extract the data contained in the `deb` file
    tar -xf data.tar.xz
}

package() {
    cd "${srcdir}/usr/share/"

    # Store application name in a variable
    _appname="${pkgname}${_year}"

    # Copy the application descriptor
    install -D "applications/${_appname}.desktop" "${pkgdir}/usr/share/applications/${_appname}.desktop"

    # Copy the application changelog
    install -D "doc/${_appname}/changelog.Debian.gz" "${pkgdir}/usr/share/doc/${_appname}/changelog.Debian.gz"

    # Copy the mime descriptor
    install -D "mime/packages/${_appname}.xml" "${pkgdir}/usr/share/mime/packages/${_appname}.xml"

    # Copy the application itself
    install -d "${pkgdir}/usr/share/"
    cp -R "${_appname}" "${pkgdir}/usr/share/${_appname}"
}

# vim:set ts=4 sw=4 et:
