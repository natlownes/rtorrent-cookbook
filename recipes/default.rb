#
# Cookbook Name:: rtorrent-cookbook
# Recipe:: default
#
#
#

package 'rtorrent'

user node[:rtorrent][:user][:name] do
  home node[:rtorrent][:user][:home]
  gid node[:rtorrent][:user][:group] 
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
