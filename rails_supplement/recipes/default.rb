
#should figure out if database spec is relative....

canaryboard = node[:deploy]['canaryboard']

def normalize_db_path basedir, db_path
  if db_path[0] == '/'
    db_path
  else
    basedir + '/' + db_path
  end
end

execute 'Conditionally run the db:setup' do
  command 'bundle exec rake db:setup'
  cwd canaryboard[:deploy_to]

  environment ({'RAILS_ENV' => canaryboard[:rails_env]})
  user node[:opsworks][:deploy_user][:user]
  group node[:opsworks][:deploy_user][:group]

  not_if { ::File.exists?(normalize_db_path(canaryboard[:deploy_to],canaryboard[:database][:database]))} 
end
