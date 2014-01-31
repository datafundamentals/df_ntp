#
# Cookbook Name:: df_ntp
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
# include_recipe "yum"

# # The only step that I can think of is getting it installed via a package
node['ntp']['packages'].each do |ntppkg|
yum_package ntppkg 
end

# service "ntp" do
# 	action [:enable, :start]
# end
# 