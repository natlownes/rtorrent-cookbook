#
# Cookbook Name:: rtorrent-cookbook
# Recipe:: default
#
#
#

package 'rtorrent'

group node[:rtorrent][:user][:group] do
  action :create
end

user node[:rtorrent][:user][:name] do
  home node[:rtorrent][:user][:home]
  group node[:rtorrent][:user][:group]
end

directory node[:rtorrent][:download_dir] do
  owner node[:rtorrent][:user][:name] 
  group node[:rtorrent][:user][:group] 
  mode "0777"
  action :create
  recursive true
end

directory node[:rtorrent][:watch_dir] do
  owner node[:rtorrent][:user][:name] 
  group node[:rtorrent][:user][:group] 
  mode "0777"
  action :create
  recursive true
end

config_file = File.join(node[:rtorrent][:user][:home], '.rtorrent.rc')
template config_file do
  source "rtorrent.rc.erb"
  owner node[:rtorrent][:user][:home]
  group node[:rtorrent][:user][:group]
  mode  "0750"

  variables(
    :watch_interval => node[:rtorrent][:watch_interval],
    :download_dir   => node[:rtorrent][:download_dir],
    :download_rate  => node[:rtorrent][:download_rate],
    :upload_rate    => node[:rtorrent][:upload_rate],
    :port_range     => node[:rtorrent][:port_range]
  )
end
