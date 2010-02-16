# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="Ruby Comma Seperated Values generation library."
HOMEPAGE="http://github.com/crafterm/comma"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND=">=dev-ruby/rspec-1.2.9"
RDEPEND="${DEPEND}
	>=dev-ruby/activesupport-2.2.2"

