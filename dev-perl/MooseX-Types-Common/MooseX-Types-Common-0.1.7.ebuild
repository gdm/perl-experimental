# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ARCANEZ
MODULE_VERSION=0.001007
inherit perl-module

DESCRIPTION='A library of commonly used type constraints'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.62 ( 0.620.0 )
	echo \>=virtual/perl-Test-Simple-0.62
}
perl_meta_runtime() {
	# Moose 0.39 ( 0.390.0 )
	echo \>=dev-perl/Moose-0.390.0
	# MooseX::Types 0.04 ( 0.40.0 )
	echo \>=dev-perl/MooseX-Types-0.40.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
