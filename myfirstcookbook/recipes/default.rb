#
# Cookbook:: myfirstcookbook
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

cookbook_file "/usr/share/httpd/noindex/index.html" do
  source "index.html"
  mode "0644"
end

service 'httpd' do
  action [:restart]
end
