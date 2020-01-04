include_recipe '::swami'
service 'httpd' do
  action               [ :enable, :start ]
end
