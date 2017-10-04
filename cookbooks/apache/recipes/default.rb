#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# install apache package
if node['platform_family'] == 'rhel'
    package = "httpd"
elsif node['package_family'] == 'debian'
    package = "apache2"
end

package 'apache2' do
    package_name package
    action :install
end

# enable apache at boot and start it
service 'apache2' do
    service_name 'httpd'
    action [:start, :enable]
end

# include default webpage
# include_recipe 'apache::websites'
