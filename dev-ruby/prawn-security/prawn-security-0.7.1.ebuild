# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="Prawn is a fast, tiny, and nimble PDF generator for Ruby"
HOMEPAGE="http://prawn.majesticseacreature.com/"
LICENSE="|| ( GPL-2 Ruby )"

SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18"
RDEPEND=""
DEPEND="${RDEPEND}"
