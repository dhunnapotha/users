name             'users'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Creates users from a databag search'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '4.0.1'

recipe           'users::default', 'Empty recipe'
recipe           'users::sysadmins', 'Create and manage sysadmin group'

%w( ubuntu debian redhat centos fedora freebsd mac_os_x scientific oracle amazon zlinux ).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/users'
issues_url 'https://github.com/chef-cookbooks/users/issues'

