# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby GtkHtml2 bindings"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""
USE_RUBY="ruby18"
RDEPEND="=gnome-extra/gtkhtml-2*
	>=dev-ruby/ruby-glib2-${PV}
	>=dev-ruby/ruby-gtk2-${PV}"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

S="${WORKDIR}/ruby-gnome2-all-${PV}/gtkhtml2"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
