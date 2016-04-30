directory "/home/upamune/.ssh" do
  action :create
  mode "700"
  owner "upamune"
end

file "/home/upamune/.ssh/authorized_keys" do
  action :create
  content ""
  mode "600"
  owner "upamune"
end

execute 'fetch authorized_keys' do
  user "upamune"
  command "(mv $HOME/.ssh/authorized_keys $HOME/.ssh/authorized_keys.bk && curl -L https://github.com/upamune.keys > $HOME/.ssh/authorized_keys && rm -f $HOME/.ssh/authorized_keys.bk) || mv -f $HOME/.ssh/authorized_keys.bk $HOME/.ssh/authorized_keys"
end
