#
# Cookbook:: lamp-stack
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "update-upgrade" do
  command "apt-get update -y"
  action :run
end
