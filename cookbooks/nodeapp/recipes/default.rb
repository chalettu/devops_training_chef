#
# Cookbook:: nodeapp
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe "nodejs"
git_client 'default' do
  action :install
end
application '/opt/test_app' do
    git 'git://github.com/poise/test_express.git'
    npm_install
    npm_start
  end
