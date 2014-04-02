#
# Cookbook Name:: df_ntp
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

package "ntp" do
	action :install 
end

execute "ntpd -g" do 
	user "root"
	action :run
end

