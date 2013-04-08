["memcached", "libmemcached-dev"].each do |pkg|
    package pkg do
      :upgrade
    end
end

service "memcached" do
  enabled true
  running true
  supports :status => true, :restart => true
  action [:enable, :start]
end

template "memcached.conf" do
  path = "/etc/memcached.conf"
  source "memcached.conf.erb"
  mode 0640
  owner "root"
  group "root"
  notifies :restart, resources(:service => "memcached")
end
