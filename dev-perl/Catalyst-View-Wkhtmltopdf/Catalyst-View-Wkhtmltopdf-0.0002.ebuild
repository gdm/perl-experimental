# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ARTHAS
#MODULE_VERSION=0.0.8.7
inherit perl-module

DESCRIPTION=""

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Catalyst-View-TT
	dev-perl/URI
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
