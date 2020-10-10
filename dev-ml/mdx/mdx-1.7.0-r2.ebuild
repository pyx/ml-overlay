# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="Execute code blocks inside markdown files"
HOMEPAGE="https://github.com/realworldocaml/mdx"
SRC_URI="https://github.com/realworldocaml/mdx/releases/download/${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/lwt app-text/pandoc )
"
BDEPEND="dev-ml/cppo"