# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

EAPI="2"

DESCRIPTION="a command line audio CD ripper"
HOMEPAGE="http://suwald.com/ripit/"
SRC_URI="http://suwald.com/ripit/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cdparanoia dagrab lame vorbis flac faac"

DEPEND="dev-perl/CDDB_get"
RDEPEND="
    cdparanoia? ( media-sound/cdparanoia )
    dagrab? ( media-sound/dagrab )
    lame? ( >=media-sound/lame-3.98.2 )
    vorbis? ( media-sound/vorbis-tools )
    flac? ( media-libs/flac )
    faac? ( media-libs/faac )
"
src_install() {
    newbin ${PN}.pl ${PN} || die
    doman ${PN}.1 || die
    dodoc README LICENSE HISTORY
    insinto /etc/${PN}
    doins config
}
