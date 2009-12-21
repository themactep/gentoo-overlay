# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="The LESS Ruby gem compiles LESS code to CSS."
HOMEPAGE="http://lesscss.org/"
LICENSE="Apache"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND=">=dev-ruby/mutter-0.4.2
		 >=dev-ruby/treetop-1.4.2"
DEPEND="${RDEPEND}"
