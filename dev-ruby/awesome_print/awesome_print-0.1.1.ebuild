# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="Pretty print Ruby objects in color and with indentation."
HOMEPAGE="http://github.com/michaeldv/awesome_print"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND=">=dev-ruby/rspec-1.2.9"
RDEPEND="${DEPEND}"

