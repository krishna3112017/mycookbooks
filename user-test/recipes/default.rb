#
# Cookbook:: user-test
# Recipe:: default

# Copyright:: 2017, The Authors, All Rights Reserved.
userpass = data_bag_item('ramesh-secret', 'ramesh')
group 'ramesh' do
  action :create
end
user 'ramesh' do
  password userpass['password']
  group 'ramesh'
  home '/home/ramesh'
  shell '/bin/bash'
  manage_home true
  action :create
end
