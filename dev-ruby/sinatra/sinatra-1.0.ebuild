# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit ruby gems
USE_RUBY="ruby18"

DESCRIPTION="Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort."
HOMEPAGE="http://www.sinatrarb.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-ruby/rack-1.0.0"
RDEPEND="${DEPEND}"
