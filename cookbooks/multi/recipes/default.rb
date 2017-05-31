#
# Cookbook:: multi
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


["mysql-server","tree","vim"].each do |pkg|
  package pkg do
    action :install
  end
end
