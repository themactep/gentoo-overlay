# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: lxde-git.eclass
# @MAINTAINER: 
# Gentoo LXDE Project <lxde@gentoo.org>
# @BLURB: Eclass for handling live git ebuilds in LXDE overlay
# @DESCRIPTION:
# This eclass contains variables and functions that most "live" git ebuilds in
# the LXDE overlay need. Currently requires EAPI=2.

case ${EAPI} in
    2) : ;;
    *) DEPEND+=" EAPI-INCOMPATIBLE " ;;
esac

inherit autotools base eutils git

EXPORT_FUNCTIONS src_unpack src_prepare src_install

WANT_AUTOMAKE="latest"
WANT_AUTOCONF="latest"

HOMEPAGE="http://lxde.org/"
EGIT_REPO_URI="git://lxde.git.sourceforge.net/gitroot/lxde/${PN}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

# Practically all packages need these deps
DEPEND+="
	>=dev-util/intltool-0.40
	dev-util/pkgconfig
	sys-devel/gettext
	"

# @ECLASS-VARIABLE: DOCS
# @DESCRIPTION:
# Use this variable if you want to install any documentation.
# example: DOCS="README AUTHORS"

# @ECLASS-VARIABLE: PATCHES
# @DESCRIPTION:
# In case you have patches to apply, specify them in PATCHES array. Make sure
# to specify the full path. This variable is used in src_prepare phase.
# example:
# PATCHES=( "${FILESDIR}/mypatch.patch"
#   "${FILESDIR}/mypatch2.patch" )

lxde-git_src_unpack() {
	git_src_unpack
}

lxde-git_src_prepare() {
	# this will apply all patches in PATCHES array
	base_src_prepare

	# this replaces the bootstrap/autogen script in most packages
	eautoreconf

	# process LINGUAS
	if [[ -d "${S}/po" ]]; then
		einfo "Running intltoolize ..."
		intltoolize --force --copy --automake || die
		strip-linguas -i "${S}/po"
	fi
}

lxde-git_src_install() {
	emake DESTDIR="${D}" install || die

	# install all docs in DOCS variable
	if [[ -n "${DOCS}" ]]; then
		dodoc $DOCS || die
	fi
}

add-lxde-man-deps() {
	# dependencies needed to generate manpages
	DEPEND+="
		dev-libs/libxslt
		app-text/docbook-xsl-stylesheets
		app-text/docbook-xml-dtd:4.1.2
		"
}
