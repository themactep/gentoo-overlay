# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="Adds several commands for using gemcutter.org, such as pushing new gems, migrating gems from RubyForge, and more."
HOMEPAGE="http://github.com/qrush/gemcutter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND="dev-ruby/net-scp
		dev-ruby/json_pure"
RDEPEND="${DEPEND}"

