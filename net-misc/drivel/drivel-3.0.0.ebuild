# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2 eutils

DESCRIPTION="Drivel is a desktop blogger with support for LiveJournal, Blogger, MoveableType, Wordpress and more."
HOMEPAGE="http://drivel.sourceforge.net/"
SRC_URI="mirror://sourceforge/drivel/${P}.tar.bz2"
LICENSE="GPL-2"

IUSE="dbus spell"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

RDEPEND=">=dev-libs/glib-2.16.6
	>=x11-libs/gtk+-2.16.5
	>=gnome-base/gconf-2
	>=gnome-base/gnome-vfs-2.6
	>=x11-libs/gtksourceview-2.2.2
	>=net-libs/libsoup-2.4.1
	>=dev-libs/libxml2-2.4.0
	spell? ( >=app-text/gtkspell-2.0.10 )
	dbus? ( >=dev-libs/dbus-glib-0.78 )"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.12.0
	>=app-text/gnome-doc-utils-0.3.2
	>=dev-util/intltool-0.21
	>=app-text/scrollkeeper-0.3.5"

DOCS="AUTHORS ChangeLog NEWS README TODO"

G2CONF="${G2CONF} \
	`use_with spell gtkspell` \
	`use_with dbus` \
	--disable-mime-update \
	--disable-desktop-update
	--localstatedir=${D}/var"

USE_DESTDIR="1"

src_unpack() {
    unpack ${A}
    cd "${S}"
    epatch "${FILESDIR}"/${PV}-gtk-dialog.patch
}