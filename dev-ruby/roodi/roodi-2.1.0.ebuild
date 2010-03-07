# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="Ruby Object Oriented Design Inferometer"
HOMEPAGE="http://roodi.rubyforge.org/"
LICENSE="MIT"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND="dev-ruby/ruby_parser"
DEPEND="${RDEPEND}"
