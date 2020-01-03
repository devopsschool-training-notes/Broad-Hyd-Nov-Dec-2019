file 'index.html' do
	content "<h1>This is Index page </h1>"
end

package 'httpd'

bash 'copy index' do
	code <<-EOH
		cp index.html /var/www/html
	EOH
end

service 'httpd' do
	action 	[:enable, :start]
end
