# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=XSAWYERX
MODULE_VERSION=0.42
inherit perl-module

DESCRIPTION='A comprehensive, DWIM-featured API to MetaCPAN'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# English
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::TinyMocker
	echo dev-perl/Test-TinyMocker
}
perl_meta_runtime() {
	# Any::Moose
	echo dev-perl/Any-Moose
	# Carp
	# echo dev-perl/Carp
	# HTTP::Tiny
	echo virtual/perl-HTTP-Tiny
	# JSON
	echo dev-perl/JSON
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# URI::Escape
	echo dev-perl/URI
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="network"
