# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="a simple payment abstraction library"
HOMEPAGE="http://activemerchant.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND=">=dev-ruby/activesupport-2.3.2
		>=dev-ruby/builder-2.0.0
"
RDEPEND="${DEPEND}"

