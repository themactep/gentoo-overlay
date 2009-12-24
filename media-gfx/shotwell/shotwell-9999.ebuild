# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit subversion

DESCRIPTION="Shotwell is an open source photo organizer designed for the GNOME desktop environment. "
HOMEPAGE="http://www.yorba.org/shotwell/"
ESVN_REPO_URI="svn://svn.yorba.org/shotwell/trunk"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-libs/dbus-glib-0.76
	>=gnome-base/gconf-2.24.1
	>=dev-libs/libgee-0.5.0
	>=x11-libs/gtk+-2.14.4
	>=sys-apps/hal-0.5.11
	>=media-libs/libexif-0.6.16
	>=media-libs/libgphoto2-2.4.2
	>=dev-db/sqlite-3.5.9
	>=dev-libs/libunique-1.0.0
	>=dev-lang/vala-0.7.9
	>=net-libs/webkit-gtk-1.1.5
"
RDEPEND="${DEPEND}"

src_unpack() {
	subversion_fetch
	cd "${S}"
}

src_install() {
	./configure --prefix=/usr --disable-desktop-update --disable-schemas-install 
	make DESTDIR="${D}" install || die "make install failed"
}

