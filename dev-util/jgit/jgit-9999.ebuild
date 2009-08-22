# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils git

EGIT_REPO_URI="git://repo.or.cz/jgit.git"
DESCRIPTION="Java Git + Eclipse plugin"
HOMEPAGE="http://www.jgit.org/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-util/git
	dev-java/sun-jdk:1.5"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${EGIT_PROJECT}

src_unpack() {
	git_src_unpack
	cd "${S}"
	epatch "${FILESDIR}/jgit-head.patch"
}

src_compile() {
	cd "${S}"
	JAVA_HOME=/opt/sun-jdk-1.5.0.16
	./make_jgit.sh
}

src_install() {
	dobin jgit
}
