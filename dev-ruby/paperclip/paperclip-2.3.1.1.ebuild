# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gems

DESCRIPTION="File attachments as attributes for ActiveRecord."
HOMEPAGE="http://www.thoughtbot.com/projects/paperclip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

USE_RUBY="ruby18 ruby19"
DEPEND="dev-ruby/shoulda
		dev-ruby/mocha
		dev-ruby/aws-s3
		dev-ruby/sqlite3-ruby
		dev-ruby/activerecord
		dev-ruby/activesupport
"
RDEPEND="${DEPEND}"

