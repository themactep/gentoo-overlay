# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby bindings for gtksourceview"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""
USE_RUBY="ruby18"
DEPEND="x11-libs/gtksourceview:1.0
	dev-util/pkgconfig"
RDEPEND="${DEPEND}
	>=dev-ruby/ruby-gtk2-${PV}"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
