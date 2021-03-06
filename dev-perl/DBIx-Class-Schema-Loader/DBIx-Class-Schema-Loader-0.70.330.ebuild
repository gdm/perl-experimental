# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.07033
inherit perl-module

DESCRIPTION='Create a DBIx::Class::Schema based on a database'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# Config::Any
	echo dev-perl/Config-Any
	# Config::General
	echo dev-perl/config-general
	# DBD::SQLite 1.29 ( 1.290.0 )
	echo \>=dev-perl/DBD-SQLite-1.290.0
	# DBI 1.56 ( 1.560.0 )
	echo \>=dev-perl/DBI-1.560.0
	# DBIx::Class::IntrospectableM2M
	echo dev-perl/DBIx-Class-IntrospectableM2M
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# File::Copy
	echo dev-lang/perl
	# File::Path 2.07 ( 2.70.0 )
	echo \>=virtual/perl-File-Path-2.07
	# File::Temp 0.16 ( 0.160.0 )
	echo \>=virtual/perl-File-Temp-0.160.0
	# IPC::Open3
	echo dev-lang/perl
	# Moose 1.12 ( 1.120.0 )
	echo \>=dev-perl/Moose-1.120.0
	# MooseX::MarkAsMethods 0.13 ( 0.130.0 )
	echo \>=dev-perl/MooseX-MarkAsMethods-0.130.0
	# MooseX::NonMoose 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooseX-NonMoose-0.160.0
	# Pod::Simple 3.22 ( 3.220.0 )
	echo \>=virtual/perl-Pod-Simple-3.220.0
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
	# Test::Pod 1.14 ( 1.140.0 )
	echo \>=dev-perl/Test-Pod-1.14
	# Test::Warn 0.21 ( 0.210.0 )
	echo \>=dev-perl/Test-Warn-0.210.0
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
}
perl_meta_runtime() {
	# Carp::Clan
	echo dev-perl/Carp-Clan
	# Class::Accessor::Grouped 0.10002 ( 0.100.20 )
	echo \>=dev-perl/Class-Accessor-Grouped-0.100.20
	# Class::C3::Componentised 1.0008 ( 1.0.800 )
	echo \>=dev-perl/Class-C3-Componentised-1.0.800
	# Class::Inspector 1.27 ( 1.270.0 )
	echo \>=dev-perl/Class-Inspector-1.270.0
	# Class::Unload
	echo dev-perl/Class-Unload
	# DBIx::Class 0.08127 ( 0.81.270 )
	echo \>=dev-perl/DBIx-Class-0.81.270
	# Data::Dump 1.06 ( 1.60.0 )
	echo \>=dev-perl/Data-Dump-1.60.0
	# Digest::MD5 2.36 ( 2.360.0 )
	echo \>=virtual/perl-Digest-MD5-2.36
	# Exporter 5.63 ( 5.630.0 )
	echo \>=virtual/perl-Exporter-5.630.0
	# File::Spec
	echo virtual/perl-File-Spec
	# Hash::Merge
	echo dev-perl/Hash-Merge
	# Lingua::EN::Inflect::Number 1.1 ( 1.100.0 )
	echo \>=dev-perl/Lingua-EN-Inflect-Number-1.100.0
	# Lingua::EN::Inflect::Phrase 0.02 ( 0.20.0 )
	echo \>=dev-perl/Lingua-EN-Inflect-Phrase-0.20.0
	# Lingua::EN::Tagger 0.2 ( 0.200.0 )
	echo \>=dev-perl/Lingua-EN-Tagger-0.200.0
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# MRO::Compat 0.09 ( 0.90.0 )
	echo \>=dev-perl/MRO-Compat-0.90.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Scope::Guard
	echo dev-perl/Scope-Guard
	# String::CamelCase 0.02 ( 0.20.0 )
	echo \>=dev-perl/String-CamelCase-0.20.0
	# String::ToIdentifier::EN 0.05 ( 0.50.0 )
	echo \>=dev-perl/String-ToIdentifier-EN-0.50.0
	# Sub::Name
	echo dev-perl/Sub-Name
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# namespace::clean 0.20 ( 0.200.0 )
	echo \>=dev-perl/namespace-clean-0.200.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
