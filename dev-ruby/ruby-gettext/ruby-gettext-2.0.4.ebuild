# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gems

MY_P=${P/ruby-/}
DESCRIPTION="Ruby GetText Package is Native Language Support Library and Tools modeled after GNU gettext package"
HOMEPAGE="http://www.yotabanana.com/hiki/ruby-gettext.html"
SRC_URI="http://gems.rubyforge.org/gems/${MY_P}.gem"

KEYWORDS="~amd64"
IUSE=""
SLOT="0"
LICENSE="Ruby"

RDEPEND="sys-devel/gettext"

S="${WORKDIR}/${PN}-package-${PV}"
