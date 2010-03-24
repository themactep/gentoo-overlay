# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="Flexible e-commerce platform."
HOMEPAGE="http://spreecommerce.com/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND=">=dev-ruby/rails-2.3.5
		>=dev-ruby/highline-1.5.1
		>=dev-ruby/authlogic-2.1.2
		>=dev-ruby/authlogic-oid-1.0.4
		>=dev-ruby/activemerchant-1.5.1
		>=dev-ruby/activerecord-tableless-0.1.0
		>=dev-ruby/less-1.2.20
		>=dev-ruby/stringex-1.0.3
		>=dev-ruby/chronic-0.2.3
		>=dev-ruby/whenever-0.3.7
		>=dev-ruby/searchlogic-2.3.5
		>=dev-ruby/will_paginate-2.3.11
		>=dev-ruby/state_machine-0.8.0
		>=dev-ruby/faker-0.3.1
		>=dev-ruby/paperclip-2.3.1.1
"
RDEPEND="${DEPEND}"

