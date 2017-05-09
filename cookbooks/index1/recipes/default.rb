directory '/etc/workspace' do 
	recursive true
end
cookbook_file '/etc/workspace/index1.php' do
	source 'index1.php'
	action :create
end
