# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.27"
inherit perl-module

DESCRIPTION="An serialization framework for Moose classes"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test +json +yaml +storable +file"
RDEPEND="
	>=dev-perl/Moose-0.870.0
	dev-perl/String-RewritePrefix
	json? (
		>=dev-perl/JSON-Any-1.150.0
	)
	yaml? (
		dev-perl/yaml
	)
	storable? (
		virtual/perl-Storable
	)
	file? (
		>=virtual/perl-IO-0.1
	)
"
DEPEND="${RDEPEND}
	test? (

		dev-perl/Test-Deep
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.88
		>=dev-perl/Test-TempDir-0.20.0

		json? (
			>=dev-perl/Test-JSON-0.60.0
		)
	)
"
SRC_TEST="do"
