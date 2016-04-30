require_relative "../../resources/yaourt"

yaourt 'ttf-ricty' do
  action :install
  user 'upamune'
end

yaourt 'ttf-koruri' do
  action :install
  user 'upamune'
end

# For Emoji
yaourt 'noto-fonts-emoji'

