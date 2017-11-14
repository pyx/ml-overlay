# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1

inherit oasis eutils

DESCRIPTION="OCaml bindings to snappy fast compression/decompression library"
HOMEPAGE="http://ygrek.org.ua/p/ocaml-snappy/"
SRC_URI="https://github.com/ygrek/ocaml-snappy/releases/download/v${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/snappy:="
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/oasis"

src_prepare() {
	epatch "${FILESDIR}/oasis.patch"
	oasis setup || die

	has_version '>=dev-lang/ocaml-4.06_beta' && epatch "${FILESDIR}/ocaml406.patch"
}
