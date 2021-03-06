# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RBO
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION="Excel::Template"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/IO-stringy
	>=dev-perl/Spreadsheet-WriteExcel-0.42
	>=dev-perl/XML-Parser-0.01
"
DEPEND="${RDEPEND}
	test? ( >=dev-perl/Test-Exception-0.21
		>=dev-perl/Test-Deep-0.95.0 )"
SRC_TEST=do
