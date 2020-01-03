file 'index.html'
file 'index.html' do
  action :delete
end
file 'file4.txt' do
  mode                       755
  owner                      "ec2-user"
  action                     :create
end
directory 'src'
