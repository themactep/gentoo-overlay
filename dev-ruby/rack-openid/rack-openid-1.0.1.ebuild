# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gems

DESCRIPTION="Rack::OpenID provides a more HTTPish API around the ruby-openid library."
HOMEPAGE="http://github.com/josh/rack-openid"
LICENSE="MIT"

KEYWORDS="~amd64"
SLOT="0"
IUSE="doc"

USE_RUBY="ruby18 ruby19"
RDEPEND=">=dev-ruby/ruby-openid-2.1.6
	>=dev-ruby/rack-0.4"
DEPEND="${RDEPEND}"
