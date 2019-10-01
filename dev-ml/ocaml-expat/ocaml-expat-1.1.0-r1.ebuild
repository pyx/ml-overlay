# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

IUSE="doc +ocamlopt test"

DESCRIPTION="OCaml bindings for expat"
SRC_URI="https://github.com/whitequark/ocaml-expat/archive/v${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/whitequark/ocaml-expat"

RDEPEND="dev-libs/expat
	>=dev-lang/ocaml-3.10.2:=[ocamlopt?]"

DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )"

SLOT="0/${PV}"
LICENSE="MIT"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
PATCHES=( "${FILESDIR}/ounit2.patch" )

src_compile() {
	emake depend
	emake all
	if use ocamlopt; then
		emake allopt
	fi
}

src_test() {
	emake test
	if use ocamlopt; then
		emake testopt
	fi
}
src_install() {
	findlib_src_preinst
	emake install

	if use doc ; then
		dohtml -r doc/html/*
	fi
	dodoc README
}