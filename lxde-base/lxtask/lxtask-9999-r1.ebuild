# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit lxde-git

DESCRIPTION="LXDE task manager"

RDEPEND="x11-libs/gtk+:2
	 dev-libs/glib:2"
DEPEND="${RDEPEND}"

DOCS="AUTHORS README"

lxde-git_src_prepare() {
        base_src_prepare

	# bypass broken gettext translations
        sed -i '/^ALL_LINGUAS=/s/.*/ALL_LINGUAS=""/' ${S}/configure*
        rm    "${S}/po/LINGUAS"
        touch "${S}/po/LINGUAS"

        eautoreconf
        if [[ -d "${S}/po" ]]; then
                einfo "Running intltoolize ..."
                intltoolize --force --copy --automake || die
                strip-linguas -i "${S}/po"
        fi
}
