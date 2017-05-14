execute "echo \ how\ are\ you\ doing >> /etc/motd" do
  only_if "test -r /etc/motd"
end
