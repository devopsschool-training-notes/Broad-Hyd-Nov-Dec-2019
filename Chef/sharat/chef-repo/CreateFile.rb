file 'File1.txt' do
  group                      "root"
  mode                       755
  owner                      "ec2-user"
end

file 'File1.txt' do
  action :touch
end

bash 'install java' do
  code                       <<-EOH
  cd /opt/
  wget -c –header “Cookie: oraclelicense=accept-securebackup-cookie” https://download.oracle.com/otn-pub/java/jdk/13.0.1+9/cec27d702aa74d5a8630c65ae61e4305/jdk-13.0.1_linux-x64_bin.tar.gz
  tar -xvzf jdk-13.0.1_linux-x64_bin.tar.gz
  EOH
end
