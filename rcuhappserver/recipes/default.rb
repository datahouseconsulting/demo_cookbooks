#
# Cookbook Name:: rcuhappserver
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# install latest node.js.
# TODO: remove this when AWS updates their node version to at least v0.10.31.
# include_recipe "nodejs::nodejs_from_package"

# install java oracle version 7 for the AS400 driver.
include_recipe "java"

# create the rcuh upstart conf file.
# template 'rcuh.conf' do
# 	path "/etc/init/rcuh.conf"
# 	source 'rcuh.conf.erb'
# end