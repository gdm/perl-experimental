# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=HIDE
MODULE_VERSION="0.03"
inherit perl-module

DESCRIPTION="Handling transaction token across forms"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Class-C3
	dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-Plugin-Session
"
RDEPEND="${DEPEND}"
