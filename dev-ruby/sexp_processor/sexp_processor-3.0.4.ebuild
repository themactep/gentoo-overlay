# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="sexp processing tools for Ruby"
HOMEPAGE="http://rubyforge.org/projects/parsetree/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18"
RDEPEND=">=dev-ruby/hoe-2.5.0
	>=dev-ruby/minitest-1.5.0
	>=dev-ruby/rubyforge-2.0.3"
DEPEND="${RDEPEND}"
