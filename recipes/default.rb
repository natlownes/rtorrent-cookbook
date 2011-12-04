#
# Cookbook Name:: rtorrent-cookbook
# Recipe:: default
#
#
#

package 'rtorrent'

user node[:rtorrent][:user][:name] do
  home node[:rtorrent][:user][:home]
end

directory node[:rtorrent][:download_dir] do
  owner node[:rtorrent][:user][:name] 
  mode "0777"
  action :create
  recursive true
end

directory node[:rtorrent][:watch_dir] do
  owner node[:rtorrent][:user][:name] 
  mode "0777"
  action :create
  recursive true
end
