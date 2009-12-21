# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="The official github command line helper for simplifying your GitHub experience."
HOMEPAGE="http://github.com/"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND=">=dev-ruby/highline-1.5.1
	>=dev-ruby/text-format-1.0.0"
RDEPEND="${DEPEND}"

