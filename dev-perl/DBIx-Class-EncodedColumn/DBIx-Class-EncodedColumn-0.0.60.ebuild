# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

MODULE_AUTHOR=FREW
MODULE_VERSION="0.00006"
inherit perl-module

DESCRIPTION="Automatic digest columns."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+md5 +sha +blowfish +gpg"
RDEPEND="
	>=dev-perl/DBIx-Class-0.60.20
	>=dev-perl/Sub-Name-0.04
	md5? (
		virtual/perl-digest-base
		virtual/perl-Digest-MD5
	)
	sha? (
		virtual/perl-digest-base
		virtual/perl-Digest-SHA
	)
	blowfish? (
		dev-perl/Crypt-Eksblowfish
	)
	gpg? (
		dev-perl/Crypt-OpenPGP
		dev-perl/Crypt-CAST5_PP
	)
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
	dev-perl/DBD-SQLite
	>=dev-perl/SQL-Translator-0.110.20
	virtual/perl-Digest-SHA
	virtual/perl-File-Spec
"
SRC_TEST="do"
