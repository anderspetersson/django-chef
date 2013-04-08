template "gunicorn.conf" do
	path "/etc/init/#{node[:site][:name]}-gunicorn.conf"
    source "gunicorn.conf.erb"
    owner "root"
    group "root"
    mode 0644
end

service "#{node[:site][:name]}-gunicorn" do
    provider Chef::Provider::Service::Upstart
    enabled true
    running true
    supports :restart => true, :reload => true, :status => true
    action [:enable, :restart]
end
