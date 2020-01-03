include_recipe '::rec1'
service 'httpd' do
  action               [ :enable, :start ]
end
