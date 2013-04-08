template "celery.conf" do
	path "/etc/init/#{node[:site][:name]}-celery.conf"
    source "celery.conf.erb"
    owner "root"
    group "root"
    mode 0644
end

service "#{node[:site][:name]}-celery" do
    provider Chef::Provider::Service::Upstart
    enabled true
    running true
    supports :restart => true, :reload => true, :status => true
    action [:enable, :restart]
end
