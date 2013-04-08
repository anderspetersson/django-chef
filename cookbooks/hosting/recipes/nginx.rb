package "nginx" do
    :upgrade
end

service "nginx" do
  enabled true
  running true
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end

template "nginx.conf" do
  path "/etc/nginx/nginx.conf"
  source "nginx.conf.erb"
  mode 0640
  owner "root"
  group "root"
  notifies :restart, resources(:service => "nginx")
end

template "nginx_site.conf" do
  path "/etc/nginx/sites-enabled/#{node[:site][:name]}"
  source "nginx_site.conf.erb"
  mode 0640
  owner "root"
  group "root"
  notifies :restart, resources(:service => "nginx")
end
