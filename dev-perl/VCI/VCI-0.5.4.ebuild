# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MKANAT
inherit perl-module

DESCRIPTION="A generic interface for interacting with various version control systems"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

PATCHES=(
	"${FILESDIR}/vci-cvs-timezone-${PV}.patch"
)

IUSE="bazaar cvs git mercurial subversion test"
RDEPEND="
	>=dev-perl/Moose-0.270.0
	dev-perl/MooseX-Method
	dev-perl/DateTime
	>=dev-perl/Path-Abstract-0.93.0
	dev-perl/DateTime-Format-DateParse
	>=dev-perl/Text-Diff-Parser-0.70.0
	>=virtual/perl-IPC-Cmd-0.42
	>=virtual/perl-Module-Load-Conditional-0.24
	>=dev-perl/IPC-Run-0.55
	dev-perl/XML-Simple
	dev-perl/libwww-perl
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Scalar-List-Utils
	bazaar? ( dev-vcs/bzr )
	subversion? ( >=dev-vcs/subversion-1.2[perl,-dso] )
	mercurial? ( dev-vcs/mercurial )
	git? ( dev-vcs/git[perl] )
	cvs? ( dev-vcs/cvs )"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Exception
		dev-perl/Test-Warn
		virtual/perl-File-Spec
	)"
