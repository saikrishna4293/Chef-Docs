case node["fqdn"]
  when "node1.localhost"
    default["motd"]["name"] = "Agent1"
    default["motd"]["loc"]  = "India"
  when "node2.localhost"
    default["motd"]["name"] = "Agent2"
    default["motd"]["loc"]  = "Soan"
end

default["temp4-rel"]["name"] = "ViratKohli"

case node["platform"]
  when "centos"
    default["apache"]["uname"]   = "centos"
    default["apache"]["sername"] = "httpd"
  when "ubuntu"    
    default["apache"]["uname"] = "ubuntu"
    default["apache"]["uname"] = "apache2"
end
