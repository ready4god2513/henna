source "http://rubygems.org"

gem "rails", "3.0.3"

gem "spree"
gem "spree_contact_us", :git => "git://github.com/dwradcliffe/spree_contact_us.git"
gem "spree_mail", :git => "git://github.com/citrus/spree_mail.git"
gem "spree_comments"
gem "acts_as_commentable"
gem "mail_chimp", ">=1.3", :git => "git://github.com/sbeam/spree-mail-chimp.git"
gem "friendly_id", "~> 3.2.1"
gem "rdiscount"

group :production do
	gem "mysql2", "< 0.3"
end

group :development do
	gem "thin"
	gem "sqlite3-ruby", :require => "sqlite3"
end