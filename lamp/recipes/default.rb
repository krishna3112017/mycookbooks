#
# Cookbook:: lamp
# Recipe:: default
package node['package_name'] do
  action :remove
end
package node['package_name']
service node['service_name'] do
  action [:start, :enable]
end
template "#{node['document_root']}/index.html" do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode 644
  action :create
end
template node['configuration_file'] do
  source 'httpd.conf.erb'
  owner 'root'
  group 'root'
  mode 644
  action :create
end
service node['service_name'] do
  action :reload
end
