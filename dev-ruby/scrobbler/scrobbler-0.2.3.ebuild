# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="wrapper for audioscrobbler (last.fm) web services"
HOMEPAGE="http://scrobbler.rubyforge.org/"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18"
RDEPEND=">=dev-ruby/hpricot-0.4.86
	>=dev-ruby/activesupport-1.4.2"
DEPEND="${RDEPEND}
	dev-ruby/echoe"

