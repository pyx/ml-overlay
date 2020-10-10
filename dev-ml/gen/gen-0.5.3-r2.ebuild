# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Simple, efficient iterators for OCaml"
HOMEPAGE="https://github.com/c-cube/gen"
SRC_URI="https://github.com/c-cube/gen/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/qcheck dev-ml/qtest )
"
