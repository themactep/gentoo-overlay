# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="A clean, simple, and unobtrusive ruby authentication solution."
HOMEPAGE="http://github.com/binarylogic/authlogic"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND="dev-ruby/activesupport"
RDEPEND="${DEPEND}"

