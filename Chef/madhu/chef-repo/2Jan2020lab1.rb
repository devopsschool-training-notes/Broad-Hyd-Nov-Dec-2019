group 'root' do
  comment               "Root group"
  members               "ec2-user"
end

file 'Lab12Jan.txt' do
  mode  755
  group "root"	
  owner  "root"
  action :create
end
