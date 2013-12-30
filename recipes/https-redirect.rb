cookbook_file 'rewrite-ssl' do
  source 'rewrite-ssl'
  path '/etc/httpd/sites-available/cloudpatrol.conf.d/rewrite-ssl'
end

service 'httpd' do
  action :restart
end
