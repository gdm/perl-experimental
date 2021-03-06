# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=ALEXP
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="DBI Model Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Runtime-5.0.0
	dev-perl/DBI
	dev-perl/MRO-Compat
"
