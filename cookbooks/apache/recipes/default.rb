
directory "#{node["document_root"]}" do
        recursive true
end

package node["package_name"] do
  action :install
end

service node["service_name"] do
  action [:start, :enable]
end

template "#{node["document_root"]}/index.html" do
  source "index.html.erb"
  mode "0644"
end

