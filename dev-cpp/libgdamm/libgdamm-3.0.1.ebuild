# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="C++ bindings for libgda"
HOMEPAGE="http://www.gtkmm.org/"
SRC_URI="http://ftp.gnome.org/pub/GNOME/sources/libgdamm/3.0/${P}.tar.bz2"

LICENSE="GPL"
SLOT="3.0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-cpp/glibmm-2.4
	gnome-extra/libgda:3"
RDEPEND="${DEPEND}"

src_install() {
        emake DESTDIR="${D}" install || die "install failed"
}
