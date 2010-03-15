# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="Clean ruby syntax for defining and deploying messy cron jobs."
HOMEPAGE="http://github.com/javan/whenever"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND=">=dev-ruby/chronic-0.2.3"
RDEPEND="${DEPEND}"

