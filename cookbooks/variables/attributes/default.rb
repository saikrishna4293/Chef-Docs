case node["fqdn"]
  when "node1.localhost"
    default["motd"]["name"] = "Agent1"
    default["motd"]["loc"]  = "India"
  when "node2.localhost"
    default["motd"]["name"] = "Agent2"
    default["motd"]["loc"]  = "Soan"
  when "node3.localhost"
    default["motd"]["name"] = "Agent3" 
    default["motd"]["loc"]  = "America"
  when "ip-172-31-44-77.us-east-2.compute.internal" 
    default["motd"]["name"] = "Agent5" 
    default["motd"]["loc"]  = "England"
end

default["temp4-rel"]["name"] = "ViratKohli"

case node["platform"]
  when "centos"
    default["apache"]["uname"]   = "centos"
    default["apache"]["sername"] = "httpd"
  when "ubuntu"    
    default["apache"]["uname"] = "ubuntu"
    default["apache"]["sername"] = "apache2"
  when "amazon"
    default["apache"]["uname"] = "linux"
    default["apache"]["sername"] = "httpd"
end
