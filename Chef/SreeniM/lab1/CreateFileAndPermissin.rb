file 'file1.dat' do
mode 755
owner "ec2-user"
group "root"
end

# modify atime and mtime
file 'file1.dat' do
action :touch
end

