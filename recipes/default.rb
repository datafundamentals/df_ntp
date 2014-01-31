#
# Cookbook Name:: df_ntp
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "yum"
# The only step that I can think of is getting it installed via a package
yum_package "ntp" do 
	action :install
end

# download the tar into the shared folder to get things properly working