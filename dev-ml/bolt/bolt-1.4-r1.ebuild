# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit findlib eutils

DESCRIPTION="Logging tool for the Objective Caml language"
HOMEPAGE="http://bolt.x9c.fr/"
SRC_URI="http://bolt.x9c.fr/distrib/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="doc"

RDEPEND=">=dev-lang/ocaml-3.11:=[ocamlopt]
	dev-ml/camlp4:="
DEPEND="${RDEPEND}
	dev-ml/ocamlbuild
"

src_prepare() {
	has_version '>=dev-lang/ocaml-4.06_beta' && epatch "${FILESDIR}/ocaml406.patch"
}

src_configure() {
	sh configure
}

src_compile() {
	emake all
	use doc && emake doc
}

src_test() {
	emake tests
}

src_install() {
	findlib_src_install
	dodoc README CHANGES FEATURES
	use doc && dohtml ocamldoc/*
}
