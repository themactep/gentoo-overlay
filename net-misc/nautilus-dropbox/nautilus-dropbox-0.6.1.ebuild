# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="Dropbox for Linux"
HOMEPAGE="http://www.getdropbox.com/"
SRC_URI="http://www.getdropbox.com/download?dl=packages/${P}.tar.bz2"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=x11-libs/gtk+-2.12
	>=dev-libs/glib-2.14
	>=gnome-base/nautilus-2.16
	>=x11-libs/libnotify-0.4.4
	dev-python/docutils"
RDEPEND="${DEPEND}"

src_install() {
        emake DESTDIR="${D}" install || die "install failed"
}
