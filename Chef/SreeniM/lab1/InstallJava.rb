bash 'extract' do
code <<-EOH
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
mv jdk-8u131-linux-x64.tar.gz /opt/
cd /opt
tar -xvf /opt/jdk-8u131-linux-x64.tar.gz
export jAVA_HOME=/opt/jdk-8u131/
EOH
end


