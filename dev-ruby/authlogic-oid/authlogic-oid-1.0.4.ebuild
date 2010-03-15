# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="OpenID support for the Authlogic library."
HOMEPAGE="http://github.com/binarylogic/authlogic_openid"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND="dev-ruby/authlogic
		>=dev-ruby/hoe-1.12.2
"
RDEPEND="${DEPEND}"

