# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LBROCARD
MODULE_VERSION=0.35
inherit perl-module

DESCRIPTION="Peek into archives without extracting them"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
meta_build_dep() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
meta_configure_dep() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
meta_runtime_dep() {
	# Archive::Tar
	echo virtual/perl-Archive-Tar
	# Archive::Zip
	echo dev-perl/Archive-Zip
	# Moose
	echo dev-perl/Moose
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="$(meta_configure_dep) $(meta_build_dep) $(meta_runtime_dep)"
RDEPEND="$(meta_runtime_dep)"
SRC_TEST="do"
