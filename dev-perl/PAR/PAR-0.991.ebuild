# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=2

MODULE_AUTHOR=SMUELLER
inherit perl-module

DESCRIPTION="Perl Archive Toolkit"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	virtual/perl-AutoLoader
	>=virtual/perl-Compress-Zlib-1.30
	>=dev-perl/Archive-Zip-1.00
	>=dev-perl/PAR-Dist-0.32
	virtual/perl-Digest-SHA
	dev-perl/Module-Signature
"
RDEPEND="${DEPEND}"

SRC_TEST=do
