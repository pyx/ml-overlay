# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Printf-style format-strings for user-defined string conversion"
HOMEPAGE="https://github.com/janestreet/ppx_custom_printf"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppxlib:=
"
RDEPEND="${DEPEND}"