[
	# Git
	"git-core",

	# Bash
	"bash-completion",

	# PostgreSQL Client
	"libpq-dev",

	# Python
	"python-setuptools",
	"python-dev",
	"python-all-dev",

	# PIP
	"python-pip",

	# PIL required libs
	"libpng-dev",
	"libjpeg8",
	"libjpeg-dev",
	"libjpeg62-dev",
	"libfreetype6",
	"libfreetype6-dev",
	"zlib1g-dev",
	"python-imaging",
	"jpegoptim",
	"optipng",
	"pngcrush",
	"advancecomp"

].each do |pkg|
    package pkg do
        :upgrade
    end
end

directory "/home/#{node[:site][:user]}/sites/" do
    owner "#{node[:site][:user]}"
    group "#{node[:site][:group]}"
    mode 0775
end
