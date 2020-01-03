#3 Write a recipe to download the java tar ball, extract it under /opt/ and set JAVA_HOME using bash resources. Notes – wget -c –header “Cookie: oraclelicense=accept-securebackup-cookie” http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz


bash 'Java Tarball Download' do
  code <<-EOH
    cd '/opt/'
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "https://download.java.net/java/GA/jdk13.0.1/cec27d702aa74d5a8630c65ae61e4305/9/GPL/openjdk-13.0.1_linux-x64_bin.tar.gz"
    tar -zxf openjdk-13.0.1_linux-x64_bin.tar.gz
    EOH
end
