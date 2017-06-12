#
# Cookbook:: directory
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

document_root = "/etc/workspace/testdir"

directory document_root do
	recursive true
end

