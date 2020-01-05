#
# Cookbook:: pola
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
bash 'extract_module_exercise3' do
  code <<-EOH
	sudo su
     wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
    tar xvf jdk-8u131-linux-x64.tar.gz
        mv jdk1.8.0_131 /opt/jdk1.8.0_131
        export JAVA_HOME=/opt/jdk1.8.0_131/bin
   EOH
end

