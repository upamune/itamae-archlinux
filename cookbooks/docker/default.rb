require_relative "../../resources/yaourt"

yaourt 'docker'
yaourt 'linux-headers'

service 'start and enable docker.service' do
  action [:start, :enable]
  name 'docker.service'
  user 'root'
end
