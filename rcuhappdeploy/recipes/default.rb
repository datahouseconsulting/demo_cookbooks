#
# Cookbook Name:: rcuhappdeploy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  Chef::Log.info(deploy[:user])
  Chef::Log.info(deploy[:group])
  Chef::Log.info(deploy[:deploy_to])
  opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path deploy[:deploy_to]
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end

  opsworks_nodejs do
    deploy_data deploy
    app application
  end

  execute 'sudo npm install' do
    cwd '/srv/www/rcuh/current'
    user 'root'
    group 'sudo'
    action :run
    environment ({'HOME' => '/home/ubuntu', 'JAVA_HOME' => '/usr/lib/jvm/java-7-oracle-amd64'})
  end
end