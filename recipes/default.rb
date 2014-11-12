#
# Cookbook Name:: td-agent-watch
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template node[:td_agent_watch][:script_path] do
  mode '0755'
  owner 'root'
  group 'root'
  source 'td-agent-watch.rb.erb'
end

cron "td-agent-watch" do
  path '/usr/local/bin:$PATH'
  minute "*/5"
  command "#{node[:td_agent_watch][:script_path]} > /dev/null 2>&1"
  action :create
end