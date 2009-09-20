# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="A photo manager for GNOME"
HOMEPAGE="http://santanu-sinha.blogspot.com/2009/06/solang.html"
SRC_URI="http://rishi.fedorapeople.org/solang/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=media-gfx/flickcurl-1.13
	media-libs/babl
	>=media-gfx/exiv2-0.18
	>=dev-cpp/libgdamm-3.0
	>=dev-libs/gdl-1.0
	media-libs/gegl
	media-libs/libgphoto2
	media-gfx/gtkimageview
	>=dev-cpp/gtkmm-2.8
	net-libs/libsoup:2.4
	net-libs/webkit-gtk"
#	>=libgda-sqlite-3.0
RDEPEND="${DEPEND}"

src_install() {
        emake DESTDIR="${D}" install || die "install failed"
}
