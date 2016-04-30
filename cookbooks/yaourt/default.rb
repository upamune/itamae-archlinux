# Install Yaourt

remote_file "/etc/pacman.conf" do
  owner "root"
  group "root"
  source "files/pacman.conf"
end

execute "update pacman.conf" do
  user "root"
  command "pacman --sync --noconfirm --refresh yaourt"
end
