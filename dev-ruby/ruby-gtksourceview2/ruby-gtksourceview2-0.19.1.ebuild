# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby bindings for gtksourceview2"
KEYWORDS="~amd64 ~x86"
IUSE=""
USE_RUBY="ruby18"
DEPEND="x11-libs/gtksourceview:2.0"
RDEPEND="${DEPEND}
	>=dev-ruby/ruby-gtk2-${PV}"
DEPEND="${DEPEND}
	dev-util/pkgconfig"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
