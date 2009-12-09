# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gems

DESCRIPTION="A JSON implementation in Ruby"
HOMEPAGE="http://json.rubyforge.org/"

LICENSE="|| ( Ruby GPL-2 )"
KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

USE_RUBY="ruby18"
DEPEND="!dev-ruby/json"
