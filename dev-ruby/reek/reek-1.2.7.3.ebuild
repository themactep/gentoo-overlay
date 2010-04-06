# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="Code smell detector for Ruby."
HOMEPAGE="http://wiki.github.com/kevinrutherford/reek"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18"
RDEPEND=">=dev-ruby/ruby_parser-2.0
	dev-ruby/sexp_processor
	dev-ruby/ruby2ruby"
DEPEND="${RDEPEND}"
