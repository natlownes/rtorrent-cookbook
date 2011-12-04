
default[:rtorrent][:user][:name] = 'rtorrent'
default[:rtorrent][:user][:home] = "/home/rtorrent"
default[:rtorrent][:download_dir] = default[:rtorrent][:user][:home] + "/torrents"
default[:rtorrent][:watch_dir] = default[:rtorrent][:user][:home] + "/.torrents_watch"
default[:rtorrent][:upload_rate] = 0
default[:rtorrent][:download_rate] = 0
default[:rtorrent][:port_range] = "6881-6889"
default[:rtorrent][:watch_interval] = 5
