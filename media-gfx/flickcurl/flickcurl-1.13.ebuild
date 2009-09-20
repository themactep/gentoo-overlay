# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="C library for the Flickr API"
HOMEPAGE="http://librdf.org/flickcurl/"
SRC_URI="http://download.dajobe.org/flickcurl/${P}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=net-misc/curl-7.10.0
	>=dev-libs/libxml2-2.6.8
	>=media-libs/raptor-1.4.0"
RDEPEND="${DEPEND}"

src_install() {
        emake DESTDIR="${D}" install || die "install failed"
}