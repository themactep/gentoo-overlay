# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby Glib2 bindings"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""
USE_RUBY="ruby18"
DEPEND=">=dev-libs/glib-2
	dev-util/pkgconfig"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
