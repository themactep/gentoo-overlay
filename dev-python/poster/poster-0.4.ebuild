# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

KEYWORDS="~amd64"

DESCRIPTION="poster provides a set of classes and functions to faciliate making HTTP POST (or PUT) requests using the standard multipart/form-data encoding."
HOMEPAGE="http://atlee.ca/software/poster"
SRC_URI="http://atlee.ca/software/poster/dist/${PV}/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools"
