# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="Useful task libraries and methods for Capistrano."
HOMEPAGE="http://www.capify.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND="dev-ruby/capistrano"
DEPEND="${RDEPEND}"
