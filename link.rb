remote_file '/etc/workspace/chef-repo/link.php' do
  source "http://www.espncricinfo.com/"
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
end
