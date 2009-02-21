load_template 'http://github.com/jjolma/rails-templates/raw/master/base_template.rb'

generate :nifty_authentication, 'user'
rake 'db:migrate'

generate :controller, "welcome index"
route "map.root :controller => 'welcome'"
git :rm => "public/index.html"

git :add => '.', :commit => "-m 'add welcome controller'"

file "app/views/welcome/index.html.erb", <<-END
  <p>
    <%= link_to 'sign up', signup_path -%>
  </p>
  <p> 
    <%= link_to 'log in', login_path -%>
  </p>
END
git :add => '.', :commit => "-m 'link to sign in, sign up from welcome index'"


