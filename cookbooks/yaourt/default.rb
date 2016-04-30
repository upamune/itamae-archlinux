# Install Yaourt

remote_file "/etc/pacman.conf" do
  owner "root"
  mode "0644"
  group "users"
  source "files/pacman.conf"
end

execute "update pacman.conf" do
  user "root"
  command "pacman --sync --noconfirm --refresh yaourt"
end
