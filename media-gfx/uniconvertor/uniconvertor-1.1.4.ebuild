# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit distutils

DESCRIPTION="UniConvertor is a universal vector graphics translator."
HOMEPAGE="http://sk1project.org/"
SRC_URI="http://sk1project.org/downloads/${PN}/v${PV}/${P}.tar.gz"

LICENSE="GPL-1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="virtual/python"
RDEPEND="${DEPEND}"

S="${WORKDIR}/UniConvertor-${PV}"
