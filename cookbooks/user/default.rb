user_name='upamune'
home_dir="/home/#{user_name}"

user 'create user' do
  action :create
  username user_name
  system_user true
  create_home true
  home home_dir
  shell run_command("which zsh").stdout.strip
end

