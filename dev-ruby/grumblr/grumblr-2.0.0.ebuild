# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

GITHUB_USER=themactep

inherit ruby

DESCRIPTION="Tumblr companion for GNOME."
HOMEPAGE="http://github.com/themactep/grumblr/"
LICENSE="BSD"

KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

SRC_URI="http://github.com/${GITHUB_USER}/${PN}/tarball/v${PV} -> ${P}.tgz"

USE_RUBY="ruby18"

RDEPEND="dev-ruby/ruby-gtk2
    dev-ruby/ruby-gconf2
    dev-ruby/libxml"
DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_compile() {
    cd "${WORKDIR}"/${GITHUB_USER}-${PN}-*
}

src_install() {
    cd "${WORKDIR}"/${GITHUB_USER}-${PN}-*

    pushd lib
    doruby -r * || die "install lib failed"
    popd

    insinto $(${RUBY} -r rbconfig -e 'print Config::CONFIG["sitedir"]')/../gems/1.8/specifications
    newins ${PN}.gemspec ${P}.gemspec || die "Unable to install fake gemspec"

    insinto /usr/share/applications
    doins data/${PN}.desktop || die "Installing launcher failed."

    insinto /usr/share/pixmaps
    doins images/${PN}.svg || die "Installing icon failed."

    dobin bin/${PN}
    dodoc README LICENSE || die "Installing docs failed."
}
