#
# Cookbook:: file
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file "/etc/workspace/file1.txt" do
	#action :delete
	content "This is Saikrishna"
end

cookbook_file "/etc/workspace/file2.txt"
	source "file2.txt"
end


