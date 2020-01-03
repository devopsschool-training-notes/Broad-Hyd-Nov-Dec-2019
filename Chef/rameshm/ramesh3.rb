bash 'java-tarball' do
  code <<-EOH
  wget -c –header “Cookie: oraclelicense=accept-securebackup-cookie” http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
  mv /home/ec2-user/Broad-Hyd-Nov-Dec-2019/Chef/rameshm/jdk-8u131-linux-x64.tar.gz /opt/
  tar -zxf jdk-8u131-linux-x64.tar.gz -c /opt/jdk-8u131-linux-x64.tar.gz
  EOH
end
