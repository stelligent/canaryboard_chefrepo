cookbook_file 'rewrite-ssl' do
  source 'rewrite-ssl'
  path '/etc/apache2/sites-available/canaryboard.conf.d/rewrite-ssl'
  #path '/etc/httpd/sites-available/canaryboard.conf.d/rewrite-ssl'
end

service 'httpd' do
  action :restart
end
