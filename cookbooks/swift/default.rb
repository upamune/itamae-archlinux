require_relative "../../resources/yaourt"

execute 'import PGP key for ncurses5-compat-libs and swift-bin' do
  user 'upamune'
  command 'gpg --keyserver pgp.mit.edu --recv-keys F7E48EDB && wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import -'
end

yaourt 'swift-development-bin'
