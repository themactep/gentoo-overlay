# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby bindings for librsvg"
KEYWORDS="~amd64 ~ia64 ~x86"
IUSE="cairo"
USE_RUBY="ruby18"

RDEPEND="
	>=gnome-base/librsvg-2.8
	>=dev-ruby/ruby-glib2-${PV}
	>=dev-ruby/ruby-gdkpixbuf2-${PV}
	cairo? ( dev-ruby/rcairo )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
