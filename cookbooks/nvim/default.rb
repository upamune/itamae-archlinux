require_relative "../../resources/yaourt"

yaourt 'neovim'

execute 'install neovim-python' do
  action :run
  command 'pip install neovim'
  user 'root'
end
