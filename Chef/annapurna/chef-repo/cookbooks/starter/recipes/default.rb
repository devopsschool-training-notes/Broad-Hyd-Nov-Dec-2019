# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html


package 'httpd'

file 'index.html' do

  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"

end

bash 'copy index' do

  code <<-EOH

    cp index.html /var/www/html

    EOH

end
