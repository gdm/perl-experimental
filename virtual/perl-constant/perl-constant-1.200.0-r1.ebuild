# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for perl-core/constant"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	|| (
		~dev-lang/perl-5.12.4
		~dev-lang/perl-5.12.3
		~dev-lang/perl-5.12.2
		~dev-lang/perl-5.12.1
	)
	!perl-core/constant
"
