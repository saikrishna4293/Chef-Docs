#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "postgresql" do
    package_name "postgresql-server"
    notifies :run , "execute[postcmd]"
end

execute "postcmd" do
    command "postgresql-setup initdb"
    action :nothing
end

service "postgresql" do
    action [:enable, :start]
end

