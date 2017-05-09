case node["fqdn"]
  when "node1.localhost"
    default["name"] = "Agent1"
    default["loc"]  = "India"
  when "node2.localhost"
    default["name"] = "Agent2"
    default["loc"]  = "Soan"
end
default["name"] = "RamCharan"

