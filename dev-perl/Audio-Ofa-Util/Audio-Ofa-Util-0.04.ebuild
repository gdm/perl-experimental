# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=PEPE
inherit perl-module

DESCRIPTION="Retrieve audio fingerprints and metadata for unknown audio files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Audio-Ofa
	>=dev-perl/Audio-Extract-PCM-0.02
	dev-perl/Class-Accessor
	dev-perl/XML-Simple
	dev-perl/WebService-MusicBrainz
	dev-perl/XML-LibXML
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
#SRC_TEST="do"
