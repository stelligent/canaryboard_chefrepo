execute "rake db:setup" do
  cwd "/srv/www/canaryboard/current"
end

execute "rake db:migrate" do
  cwd "/srv/www/canaryboard/current"
end

execute "rake db:test:prepare" do
  cwd "/srv/www/canaryboard/current"
end
