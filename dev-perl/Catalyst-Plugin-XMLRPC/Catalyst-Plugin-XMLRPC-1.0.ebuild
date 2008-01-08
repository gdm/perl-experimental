# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Dispatch XMLRPC methods with Catalyst"
SRC_URI="mirror://cpan/authors/id/S/SR/SRI/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/S/SR/SRI/${P}.readme"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND=">=dev-perl/Catalyst-5.64
	dev-perl/RPC-XML"

