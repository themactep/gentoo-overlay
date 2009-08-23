# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby gems

DESCRIPTION="PPDS shared libraries"
HOMEPAGE="http://github.com/themactep/ppds-libs/"
LICENSE="BSD"

KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"
USE_RUBY="ruby18"

RDEPEND="dev-ruby/ruby-gconf2"
DEPEND="${RDEPEND}"
