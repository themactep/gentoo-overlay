# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_TASK_TEST="test"

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG"

inherit ruby-fakegem

DESCRIPTION="Optimized replacement for thread.rb primitives"
HOMEPAGE="http://gemcutter.org/gems/fastthread"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-ruby/echoe-2.7.11"
DEPEND="${RDEPEND}"

ruby_add_bdepend test '>=dev-ruby/echoe-2.7.11 virtual/ruby-test-unit'
ruby_add_bdepend doc '>=dev-ruby/echoe-2.7.11'

all_ruby_prepare() {
	sed -i -e 's|if Platform|if Echoe::Platform|' Rakefile || die
}

each_ruby_compile() {
	${RUBY} -S rake compile || die "build failed"
}
