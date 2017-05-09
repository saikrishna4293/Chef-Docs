case node["fqdn"]
  when "node1.localhost" 
    default["name"] = "saikrishna"
  when "node2.localhost"
    default["name"] = "virat kohli"
end
