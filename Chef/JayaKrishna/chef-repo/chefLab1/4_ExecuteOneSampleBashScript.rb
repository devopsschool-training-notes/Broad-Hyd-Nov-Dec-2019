bash 'extract_java' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget -c –header “Cookie: oraclelicense=accept-securebackup-cookie” http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
  tar -zxf jdk-8u131-linux-x64.tar.gz
  cd tarball
  ./configure
  make
  make install
  EOH
end
