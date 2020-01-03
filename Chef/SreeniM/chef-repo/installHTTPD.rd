file 'index.html' do
content "<H1> Sreeni M sample chef program </H1>"
end

package 'httpd'

bash 'copyindexfile' do
code <<-EOH
cp index.html /var/www/html/
EOH
end

service 'httpd' do
  action               [ :enable, :start ]
end
