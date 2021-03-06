# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

# ruby19 → not needed, it's bundled as part of the main package
# jruby → tests fail (badly?) for encoding and zlib support (latter
# fixed in 1.4)
USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC="rdoc"

RUBY_FAKEGEM_DOCDIR="doc/html"
RUBY_FAKEGEM_EXTRADOC="AUTHORS CHANGELOG README TODO"

inherit ruby-fakegem

ruby_add_bdepend test virtual/ruby-test-unit

DESCRIPTION="FasterCSV is a replacement for the standard CSV library"
HOMEPAGE="http://fastercsv.rubyforge.org/"
LICENSE="|| ( Ruby GPL-2 )"

KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

ruby_add_rdepend test virtual/ruby-test-unit

all_ruby_install() {
	all_fakegem_install

	docinto examples
	dodoc examples/* || die
}
