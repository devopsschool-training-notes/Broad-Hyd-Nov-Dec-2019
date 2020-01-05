file 'index.html'

file 'file4.txt' do
  mode                       755
  owner                      "ec2-user"
  action                     :create
end

directory 'src'

file 'index.html' do
  content                    "<h1>Welcome to CHEF  Dilip ....! <h1>"
end

package 'httpd' 

bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

service 'httpd' do
  action               [ :enable, :start ]
end

