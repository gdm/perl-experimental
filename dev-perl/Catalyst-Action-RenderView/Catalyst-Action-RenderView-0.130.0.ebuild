# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.13"
inherit perl-module

DESCRIPTION="Sensible default end action."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/Data-Visitor-0.240.0
	dev-perl/MRO-Compat
"
DEPEND="
	test? ( dev-perl/HTTP-Request-AsCGI )
	${RDEPEND}
"
