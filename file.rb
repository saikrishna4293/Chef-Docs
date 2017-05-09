file "/etc/motd" do 
	content "Hi Devops Engineer"
end

package "ntp" do 
	action :remove
end
