# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=OLIMAUL
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION="Generic CRC functions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="
	virtual/perl-Module-Build
"
SRC_TEST=do
