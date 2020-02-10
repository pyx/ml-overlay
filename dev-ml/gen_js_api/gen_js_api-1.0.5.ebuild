# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit findlib

DESCRIPTION="Easy OCaml bindings for Javascript libraries"
HOMEPAGE="https://github.com/LexiFi/gen_js_api"
SRC_URI="https://github.com/LexiFi/gen_js_api/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.05:=
	dev-ml/js_of_ocaml:="
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/oc408.patch" )

src_prepare() {
	default
	has_version '>=dev-lang/ocaml-4.10_beta' && eapply "${FILESDIR}/oc410.patch"
}

src_install () {
	findlib_src_install
	dodoc CLASSES.md IMPLGEN.md LOW_LEVEL_BINDING.md NAMING.md PPX.md README.md TODO.md TYPES.md VALUES.md
}
