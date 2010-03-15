# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="A simple REST client for Ruby"
HOMEPAGE="http://rest-client.heroku.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18"
RDEPEND=">=dev-ruby/mime-types-1.16"
DEPEND="${RDEPEND}"
