# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

GITHUB_USER=binarylogic

inherit ruby

DESCRIPTION="Provides common named scopes and object based searching for ActiveRecord"
HOMEPAGE="http://github.com/binarylogic/searchlogic/"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples test"

SRC_URI="http://github.com/${GITHUB_USER}/${PN}/tarball/v${PV} -> ${P}.tgz"

USE_RUBY="ruby18"

DEPEND="doc? ( dev-ruby/rake )
	test? ( dev-ruby/rake dev-ruby/mocha )"
RDEPEND=">=dev-ruby/activesupport-1.4.4"

S="${WORKDIR}"

src_prepare() {
	cd "${WORKDIR}"/${GITHUB_USER}-${PN}-*

	sed -i -e "/s\.name/s:searchlogic:${PN}:" searchlogic.gemspec || die "unable to fix gemspec"
}

src_compile() {
	cd "${WORKDIR}"/${GITHUB_USER}-${PN}-*

	if use doc; then
		rake rdoc || die "rake rdoc failed"
	fi
}

src_test() {
	cd "${WORKDIR}"/${GITHUB_USER}-${PN}-*

	rake test || die "rake test failed"
}

src_install() {
	cd "${WORKDIR}"/${GITHUB_USER}-${PN}-*

	pushd lib
	doruby -r * || die "install lib failed"
	popd

	insinto $(${RUBY} -r rbconfig -e 'print Config::CONFIG["sitedir"]')/../gems/1.8/specifications
	newins searchlogic.gemspec ${P}.gemspec || die "Unable to install fake gemspec"

	dodoc CHANGELOG.rdoc README.rdoc || die "Installing docs failed."

	if use doc; then
		pushd doc
		dohtml -r * || die "Installing html documentation failed."
		popd
	fi

	if use examples; then
		docinto examples
		dodoc examples/* || die "Installing examples failes."
	fi
}
