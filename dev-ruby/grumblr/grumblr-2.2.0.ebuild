# Copyright 1999-2009 Gentoo Foundation 
# Distributed under the terms of the GNU General Public License v2 
# $Header: $ 

inherit eutils ruby gems

DESCRIPTION="Tumblr companion for GNOME."
HOMEPAGE="http://themactep.com/grumblr/"
LICENSE="BSD"

USE_RUBY="ruby18"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-ruby/ruby-gtk2 
	dev-ruby/ruby-gconf2 
	dev-ruby/libxml 
	>=dev-ruby/rest-client-1.3.0
	dev-ruby/ppds-libs"
DEPEND="${RDEPEND}"

src_install() {
	gems_src_install
	gems_location 
	doicon ${D}/${GEMSDIR}/gems/${P}/data/pixmaps/${PN}.svg
	make_desktop_entry ${PN} "Grumblr Tumblr companion" "${PN}" "Network"
}
