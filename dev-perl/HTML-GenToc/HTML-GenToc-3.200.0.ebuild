# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RUBYKAT
MODULE_VERSION="3.20"
inherit perl-module

DESCRIPTION="Generate a Table of Contents for HTML documents."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
comment() { echo ''; }
RDEPEND="
	$(comment "virtual/perl-Data-Dumper")
	$(comment "virtual/perl-File-Basename")
	>=virtual/perl-Getopt-Long-2.34 $(comment 2.340.0)
	dev-perl/HTML-Parser $(comment HTML::Entities)
	>=dev-perl/HTML-LinkList-0.150.100
	>=dev-perl/HTML-SimpleParse-0.1 $(comment 0.100.0)
	virtual/perl-PodParser $(comment Pod::Usage)
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	virtual/perl-File-Temp
	virtual/perl-Test-Simple
"
SRC_TEST="do"
