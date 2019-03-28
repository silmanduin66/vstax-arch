# Maintainer Pierre-Yves Savioz <savioz.py@net-c.com>

pkgname="vstax"
_year="2018"
pkgver="${_year}.1.0.5"
pkgrel="1"
pkgdesc="Software to fill the tax forms of the canton of Valais, Switzerland"
url="http://www.vs.ch/vstax"
license=('unknown')
arch=('i686' 'x86_64')
depends=('shared-mime-info' 'desktop-file-utils')
install="vstax.install"
changelog="ChangeLog"
[ "${CARCH}" = "i686" ] && _CARCH='i386'
[ "${CARCH}" = "x86_64" ] && _CARCH='amd64'
source=("https://sftp.vs.ch/${pkgname}/${_year}/${pkgname}${_year}_${_CARCH}.deb")
sha256sums=('b6411618d9e0cecfac4f3c0404a191bb699c36f227de4816f7b1d9dd8444945f')
[ "${CARCH}" = "x86_64" ] && sha256sums[0]='a72701dfabfec3484ddb13d12962233526a8849ec42fe9f5f381c671f727a9a2'

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
