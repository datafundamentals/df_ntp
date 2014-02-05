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


# turn on the ntp service
bash "start ntp service " do 
	user "root" 
	command "chkconfig ntp on" 
	action :run
end 

# synch the clock with the NTP server

bash "sync-clock" do 
user "root" 
command "ntpdate pool.ntp.org"
action :run 
end

service "ntpd" do 
	action [:enable, :start]
end
