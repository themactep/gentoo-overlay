# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="A mixin for creating models that are not bound to DB."
HOMEPAGE="http://www.opensourcery.co.za/activerecordtableless/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND="dev-ruby/activerecord"
RDEPEND="${DEPEND}"
