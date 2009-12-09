# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="Allows custom language loaders for specified file extensions to be hooked into require."
HOMEPAGE="http://polyglot.rubyforge.org/"
LICENSE="Apache"

SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND=">=dev-ruby/hoe-2.3.2"
DEPEND="${RDEPEND}"
