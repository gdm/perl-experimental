# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (email modules)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+emailsimple +emailvalid +emailsender +emailmimekit"
COMMON_DEPEND="
	emailsimple? ( dev-perl/Email-Simple )
	emailvalid? ( dev-perl/Email-Valid )
	emailsender? ( dev-perl/Email-Sender )
	emailmimekit? ( dev-perl/Email-MIME-Kit )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
