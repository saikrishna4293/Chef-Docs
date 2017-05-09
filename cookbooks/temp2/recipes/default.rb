#
# Cookbook:: temp2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template "/etc/workspace/text.txt" do
   source "text.erb"
end
