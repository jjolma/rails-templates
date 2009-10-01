run "echo TODO > README"

generate :nifty_layout

git :init

file "gitignore", <<-END
.DS_STORE
log/.*log
tmp/**/*
END

run "cp config/environments/development.rb config/environments/staging.rb"

git :add => "."
git :commit => "-m 'initial commit'"
