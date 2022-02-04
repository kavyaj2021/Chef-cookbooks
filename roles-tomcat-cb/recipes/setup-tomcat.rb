#Downloading TOMCAT
remote_file '/usr/local/' do
  source 'https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz'
  action :create
end
#Extracting TOMCAT TAR 
archive_file '/usr/local/apache-tomcat-9.0.58.tar.gz' do 
  destination '/usr/local/'
  action :extract
end
#Rename apache TAR
execute 'renamingtar' do
  command 'mv /usr/local/apache-tomcat-9.0.58.tar.gz /usr/local/tomcat9'
end
