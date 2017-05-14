
node["temp1"]["iterate"].each do |name, data_init|
  
  folder = "/etc/workspace/#{name}"
  directory folder do
    recursive true
  end

  template "#{folder}/#{name}.txt" do
    source "name.erb"
    mode "0644"
    variables(
	:uname => data_init["data"]
    )
  end
end
