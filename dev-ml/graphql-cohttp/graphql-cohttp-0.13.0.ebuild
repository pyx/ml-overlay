# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Build GraphQL schemas with Async support"
HOMEPAGE="https://github.com/andreas/ocaml-graphql-server"
SRC_URI="https://github.com/andreas/ocaml-graphql-server/archive/${PV}.tar.gz -> ocaml-graphql-server-${PV}.tar.gz"
LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/graphql:=
	dev-ml/cohttp:=
	dev-ml/crunch:=
	dev-ml/astring:=
	dev-ml/base64:=
	dev-ml/ocplib-endian:=
	dev-ml/digestif:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest dev-ml/async_unix dev-ml/graphql-lwt )"
S="${WORKDIR}/ocaml-graphql-server-${PV}"