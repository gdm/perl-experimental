# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CLACO
MODULE_VERSION="0.02005"
inherit perl-module

DESCRIPTION="Validate all data before submitting to your database."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+recommended"
DEPEND="
	>=dev-perl/DBIx-Class-0.70.50
	>=dev-perl/FormValidator-Simple-0.170.0
	>=dev-perl/DBD-SQLite-1.110.0
	dev-perl/DateTime-Format-SQLite
	recommended? (
		dev-perl/Data-FormValidator
	)
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
