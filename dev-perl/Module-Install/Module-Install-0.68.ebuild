# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Standalone, extensible Perl module installer"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/A/AD/ADAMK/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	>=dev-perl/YAML-Syck-0.27
	>=dev-perl/Module-ScanDeps-0.28
	dev-perl/Module-CoreList
	>=dev-perl/PAR-Dist-0.03
	>=dev-perl/Archive-Tar-0.23
	dev-perl/extutils-parsexs
	dev-perl/module-build
"

