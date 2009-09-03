# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby GtkGLExt bindings"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""
USE_RUBY="ruby18"
DEPEND=">=x11-libs/gtkglext-1.0.3
	>=x11-libs/gtk+-2"
RDEPEND="dev-ruby/ruby-opengl
	dev-ruby/ruby-glib2
	dev-ruby/ruby-gtk2"
DEPEND="${DEPEND}
	dev-util/pkgconfig"

PATCHES=( "${FILESDIR}/${P}-pkgconfig.patch" )
