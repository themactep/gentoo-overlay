# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby vte bindings"
KEYWORDS="~amd64 ~x86"
IUSE=""
USE_RUBY="ruby18"
DEPEND=">=x11-libs/vte-0.12.1
	>=dev-ruby/ruby-gtk2-${PV}"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
