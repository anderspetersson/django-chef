virtualenv "/home/#{node[:site][:user]}/sites/#{node[:site][:name]}" do
    owner "#{node[:site][:user]}"
    group "#{node[:site][:group]}"
    mode 0775
end

directory "/home/#{node[:site][:user]}/sites/#{node[:site][:name]}/run" do
    owner "#{node[:site][:user]}"
    group "#{node[:site][:group]}"
    mode 0775
end

script "Install #{node[:site][:name]}" do
  interpreter "bash"
  user "#{node[:site][:user]}"
  group "#{node[:site][:group]}"
  code <<-EOH
  /home/#{node[:site][:user]}/sites/#{node[:site][:name]}/bin/pip install -e git+git@github.com:anderspetersson/#{node[:site][:name]}.git#egg=#{node[:site][:name]}
  EOH
end

script "Install Requirements for #{node[:site][:name]}" do
  interpreter "bash"
  user "#{node[:site][:user]}"
  group "#{node[:site][:group]}"
  code <<-EOH
  /home/#{node[:site][:user]}/sites/#{node[:site][:name]}/bin/pip install -r /home/#{node[:site][:user]}/sites/#{node[:site][:name]}/src/#{node[:site][:name]}/#{node[:site][:requirements_file]}
  EOH
end
