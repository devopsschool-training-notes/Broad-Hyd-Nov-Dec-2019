bash 'extract_module' do
        code <<-EOH
                wget https://download.java.net/java/GA/jdk13.0.1/cec27d702aa74d5a8630c65ae61e4305/9/GPL/openjdk-13.0.1_linux-x64_bin.tar.gz
                tar -xvzf openjdk-13.0.1_linux-x64_bin.tar.gz -C /opt/
                export JAVA_HOME=/opt/jdk-13.0.1/bin/
                echo $JAVA_HOME
        EOH
end

