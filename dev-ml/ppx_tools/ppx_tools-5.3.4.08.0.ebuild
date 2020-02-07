# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit findlib versionator eutils

MY_PV=$(replace_version_separator 2 '+')
DESCRIPTION="Tools for authors of ppx rewriters"
HOMEPAGE="https://github.com/alainfrisch/ppx_tools"
SRC_URI="https://github.com/alainfrisch/ppx_tools/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc"
IUSE="+ocamlopt"

DEPEND=">=dev-lang/ocaml-4.06_beta:=[ocamlopt?]"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-$(replace_version_separator 2 '-')"

src_prepare() {
	has_version '>=dev-lang/ocaml-4.10_beta' && eapply "${FILESDIR}/oc410.patch"
	default
}

src_compile() {
	emake -j1 $(usex ocamlopt "" "ARCH=none")
}

src_install() {
	findlib_src_install
	dodoc README.md
}
