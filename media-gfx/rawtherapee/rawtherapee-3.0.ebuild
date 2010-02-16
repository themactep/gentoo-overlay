# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit versionator

MY_PV=$(delete_all_version_separators)
MY_P=${PN}${MY_PV}
MY_PN=RawTherapee

DESCRIPTION="THe Experimental RAW Photo Editor"
HOMEPAGE="http://www.rawtherapee.com/"
SRC_URI="http://www.rawtherapee.com/${MY_P}src.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
LANGS="cs da de en_US en_GB el es eu fr he hu it ja lv nl nn pl ru sk fi sv tr zh_CN zh_TW"
for lng in ${LANGS}; do
	IUSE="${IUSE} linguas_${lng}"
done

DEPEND="
	>=dev-libs/glib-2.16
	>=dev-cpp/glibmm-2.16
	dev-libs/libsigc++:2
	>=x11-libs/gtk+-2.12
	>=dev-cpp/gtkmm-2.12
	media-libs/libiptcdata
"
#	>=gio-2.16
#	>=giomm-2.12

RDEPEND="${DEPEND}
	media-libs/jpeg
	media-libs/tiff
	media-libs/libpng"

#RESTRICT="strip"

S=${WORKDIR}/${MY_PN}${MY_PV}

src_compile() {
	cd "${S}"
	cmake .
#	make || die
	make install || die
}

src_install() {

	insinto "/usr/share/pixmaps"
	doins "${FILESDIR}/${PN}.png" || die
	insinto "/usr/share/applications"
	doins "${FILESDIR}/${PN}.desktop" || die
	dobin "${FILESDIR}/rtstart" || die

	exeinto "/opt/${MY_PN}"
	doexe release/rt release/librtengine.so release/rtstart release/rwz_sdk.so || die

	insinto "/opt/${MY_PN}"
	doins -r release/images release/profiles release/themes || die

	insinto "/opt/${MY_PN}/languages"
	doins "release/languages/english-us" || die # Always install english lang. file

	for lng in ${LINGUAS}; do
		case $lng in
			cs) doins "release/languages/czech" || die ;;
			da) doins "release/languages/dansk" || die ;;
			de) doins "release/languages/deutsch" || die ;;
			en_GB) doins "release/languages/english-uk" || die ;;
			es) doins "release/languages/espanol" || die ;;
			eu) doins "release/languages/euskara" || die ;;
			el) doins "release/languages/greek" || die ;;
			fr) doins "release/languages/francais" || die ;;
			he) doins "release/languages/hebrew" || die ;;
			hu) doins "release/languages/magyar" || die ;;
			it) doins "release/languages/italian" || die ;;
			ja) doins "release/languages/japanese" || die ;;
			lv) doins "release/languages/latvian" || die ;;
			nl) doins "release/languages/nederlands" || die ;;
			nn) doins "release/languages/norsk-bm" || die ;;
			pl) doins "release/languages/polish" || die ;;
			ru) doins "release/languages/russian" || die ;;
			sk) doins "release/languages/slovak" || die ;;
			fi) doins "release/languages/suomi" || die ;;
			sv) doins "release/languages/swedish" || die ;;
			tr) doins "release/languages/turkish" || die ;;
			zh_CN) doins "release/languages/chinese simplified" || die ;;
			zh_TW) doins "release/languages/chinese traditional" || die ;;
		esac
	done
}
