file  'test.txt' do
mode 755
owner "ec2-user"
action [ :create, :touch]
end 
