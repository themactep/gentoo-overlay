# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby poppler-glib bindings"
KEYWORDS="~amd64 ~x86"
IUSE=""
USE_RUBY="ruby18"
RDEPEND=">=virtual/poppler-glib-0.8.0
	dev-ruby/ruby-gdkpixbuf2
	>=dev-ruby/ruby-glib2-${PV}"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
