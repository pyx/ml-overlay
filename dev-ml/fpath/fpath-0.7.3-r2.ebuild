# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="File system paths for OCaml"
HOMEPAGE="http://erratique.ch/software/fpath https://github.com/dbuenzli/fpath"
SRC_URI="http://erratique.ch/software/fpath/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build || die
}
