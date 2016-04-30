include_recipe "../cookbooks/yaourt/default.rb"
# ユーザー作成時にログインシェルをzshに指定したので先に実行
include_recipe "../cookbooks/terminal/default.rb"

include_recipe "../cookbooks/user/default.rb"

include_recipe "../cookbooks/fonts/default.rb"

include_recipe "../cookbooks/docker/default.rb"

include_recipe "../cookbooks/go/default.rb"
include_recipe "../cookbooks/python/default.rb"
include_recipe "../cookbooks/ruby/default.rb"

include_recipe "../cookbooks/git/default.rb"
include_recipe "../cookbooks/nvim/default.rb"

include_recipe "../cookbooks/cui-tools/default.rb"
