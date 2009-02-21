load_template 'http://github.com/jjolma/rails-templates/raw/master/base_template.rb'

generate :nifty_authentication, 'user'
rake 'db:migrate'

generate :controller, "welcome index"
route "map.root :controller => 'welcome'"
git :rm => "public/index.html"

git :add => '.', :commit => "-m 'add welcome controller'"
