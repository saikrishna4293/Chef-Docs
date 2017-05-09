
node["temp1"].each do |name|
  
  folder = "/etc/workspace/#{name}"
  directory folder do
    recursive true
  end

  template "#{folder}/#{name}.txt" do
    source "name.erb"
    mode "0644"
    #variables (
#	:username => "saikrishna"
#        :location => "India"
#    )
  end
end
