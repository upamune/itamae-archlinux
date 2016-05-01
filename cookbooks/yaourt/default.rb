# Install Yaourt

remote_file "/etc/pacman.conf" do
  owner "root"
  mode "0644"
  group "users"
  source "files/pacman.conf"
end

remote_file "/etc/yaourtrc" do
  owner "root"
  mode "0644"
  group "users"
  source "files/yaourtrc"
end

execute "update pacman.conf" do
  user "root"
  command "pacman --sync --noconfirm --refresh yaourt"
end
