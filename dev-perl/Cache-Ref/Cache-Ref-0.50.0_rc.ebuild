# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BRUNOV
MODULE_VERSION=0.05-TRIAL
MODULE_DZIL_TRIAL=1
inherit perl-module

DESCRIPTION="Memory only cache of live references"

SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	dev-perl/Hash-Util-FieldHash-Compat
	dev-perl/Moose
	dev-perl/MooseX-Role-Parameterized
	dev-perl/namespace-autoclean
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	dev-perl/Moose
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
