#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# install apache package
package 'apache2' do
    package_name 'httpd'
    action :install
end

# enable apache at boot and start it
service 'apache2' do
    service_name 'httpd'
    action [:start, :enable]
end
