["httpd","ntp","vim"].each do |pkg|
  package pkg do 
    action :install
  end
end
