
node["iterate"].each do |site_name, site_data|
  document_root = "etc/workspace/multi-temp/#{site_name}"
  template "/etc/workspace/multi-temp/#{site_name}/#{site_name}.txt" do
    source "custom.erb"
    mode "0644"
    variables(
      :document_root => document_root,
      :port => site_data['port']
    )
  end

  directory document_root do
    mode "0755"
    recursive true
  end

  template "#{document_root}/index.html" do
    source "index.html.erb"
    mode "0644"
    variables(
      :site_name => site_name,
      :port => site_data['port']
    )
  end
end
