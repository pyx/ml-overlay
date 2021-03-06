# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Meta Language Toolchain"
HOMEPAGE="https://github.com/facebook/reason"
SRC_URI="https://registry.npmjs.org/@esy-ocaml/reason/-/${P}.tgz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="+ocamlopt"

DEPEND=""
RDEPEND="${DEPEND}"
S=( "${WORKDIR}/package" )
