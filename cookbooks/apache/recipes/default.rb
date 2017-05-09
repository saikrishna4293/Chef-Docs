
package node["package_name"] do
  action :install
end

service node["service_name"] do
  action [:start, :enable]
end

cookbook_file "#{node["document_root"]}/index.html" do
  source "index.html"
  mode "0644"
end

