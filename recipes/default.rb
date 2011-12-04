#
# Cookbook Name:: rtorrent-cookbook
# Recipe:: default
#
#
#

package 'rtorrent'

user default[:rtorrent][:user][:name] do
  home default[:rtorrent][:user][:home]
end

directory default[:rtorrent][:download_dir] do
  owner default[:rtorrent][:user][:name] 
  mode "0777"
  action :create
  recursive true
end

directory default[:rtorrent][:watch_dir] do
  owner default[:rtorrent][:user][:name] 
  mode "0777"
  action :create
  recursive true
end
