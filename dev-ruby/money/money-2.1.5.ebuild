# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="Library aiding in handling of money."
HOMEPAGE="http://money.rubyforge.org/"
LICENSE="BSD"

SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND=""
DEPEND="${RDEPEND}"
