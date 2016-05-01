user_name='upamune'
home_dir="/home/#{user_name}"
pass_word='$6$salt$PNgsJo7ryMv5L7OeHCwQhtyKISMqCTdUMrlGfHl/xV2pUcVceMtpcXirzxfKzXwW9N3WKEtTuYEvFlWAoMJ6J0'
wheel_gid='10'

user 'create user' do
  action :create
  username user_name
  password pass_word
  system_user true
  create_home true
  home home_dir
end

user user_name do
  gid wheel_gid
end

# sudo可能にする
remote_file "/etc/sudoers" do
  source "files/sudoers"
  mode   "440"
  owner  "root"
  group  "root"
end
