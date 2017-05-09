#
# Cookbook:: temp3
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template "/etc/workspace/sampletemp.txt" do
  source "temp.erb"
end
