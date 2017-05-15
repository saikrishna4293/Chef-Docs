case node["platform"]
 when "centos"
  default["package_name"]  = "httpd"
  default["service_name"]  = "httpd"
  default["document_root"] = "/var/www/html"
 when "ubuntu"
  default["package_name"]  = "apache2"
  default["service_name"]  = "apache2"
  default["document_root"] = "/var/www"
end

# instead of case we can use if statement
# if node["platform"] == "centos"
# elsif node["platform"] == "ubuntu"
# end
