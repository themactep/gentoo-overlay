# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gems

DESCRIPTION="An extension library to access a SQLite database from Ruby"
HOMEPAGE="http://rubyforge.org/projects/sqlite-ruby/"
LICENSE="BSD"

SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND="=dev-db/sqlite-3*"
DEPEND="${RDEPEND}"
