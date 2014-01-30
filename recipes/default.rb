#
# Cookbook Name:: df_ntp
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# The only step that I can think of is getting it installed via a package
package "ntp" do 
	action :install
end

