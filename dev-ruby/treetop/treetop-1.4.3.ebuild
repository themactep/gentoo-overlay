# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="A Ruby-based text parsing and interpretation DSL."
HOMEPAGE="http://functionalform.blogspot.com/"
LICENSE="Apache"

SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND=">=dev-ruby/polyglot-0.2.5"
DEPEND="${RDEPEND}"
