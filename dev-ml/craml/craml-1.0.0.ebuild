# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="CRAM testing framework"
HOMEPAGE="https://github.com/realworldocaml/craml"
SRC_URI="https://github.com/realworldocaml/craml/releases/download/${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/fmt:=
	dev-ml/astring:=
	dev-ml/logs:=
	dev-ml/cmdliner:=
"
DEPEND="${RDEPEND}"
