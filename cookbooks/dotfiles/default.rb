execute 'clone dotfiles' do
  user "upamune"
  command "cd $HOME&&rm -fr $HOME/dotfiles;git clone https://github.com/upamune/dotfiles.git"
end
