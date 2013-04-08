default[:site][:name] = "mysite"
default[:site][:user] = "user"
default[:site][:group] = "group"

default[:nginx][:domain_name] = "mysite.com"
default[:nginx][:force_www] = false

default[:gunicorn][:listen_adress] = "127.0.0.1"
default[:gunicorn][:listen_port] = "8000"
default[:gunicorn][:num_workers] = "2"
default[:gunicorn][:timeout] = "5" # Timeout after 5 seconds.
default[:gunicorn][:django_settings_path] = "mysite.settings"
default[:gunicorn][:django_settings_file] = "mysite/settings.py"

default[:memcached][:listen_adress] = "127.0.0.1"
default[:memcached][:listen_port] = "11211"
default[:memcached][:memory_limit] = "32"
default[:memcached][:logfile] = "/var/log/memcached.log"
default[:memcached][:user] = "nobody"
