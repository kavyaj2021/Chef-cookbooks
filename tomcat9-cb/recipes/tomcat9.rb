#Installing JAVA
package 'java-1.8.0-openjdk-devel' do
  action :install
end
#Downloading TOMCAT
#remote_file '/usr/local/apache-tomcat-9.0.58.tar.gz' do
#  source 'https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz'
#  action :create
#end
#Extracting TOMCAT TAR 
execute 'downloading-tomcat' do
  command 'wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz -P /usr/local'
end
#archive_file 'extract-tomcat' do 
#  path '/usr/local/apache-tomcat-9.0.58.tar.gz' 
#  destination '/usr/local/'
#  action :extract
#end
execute 'extracting-tomcat' do
  command 'tar -xf /usr/local/apache-tomcat-9.0.58.tar.gz -C /usr/local'
end  
#Rename apache TAR
execute 'renamingtar' do
  command 'mv /usr/local/apache-tomcat-9.0.58.tar.gz /usr/local/tomcat9'
end
#Start TOMCAT
execute 'starttomcat' do
  command 'sh /usr/local/apache-tomcat-9.0.58/bin/startup.sh'
end
#Copying Tomcat-users.xml
cookbook_file '/usr/local/apache-tomcat-9.0.58/conf/tomcat-users.xml' do
  source 'tomcat-users.xml'
  action :create
end
#Copying context.xml
cookbook_file '/usr/local/apache-tomcat-9.0.58/conf/context.xml' do
  source 'context.xml'
  action :create
end
#Deploy WAR
remote_file '/usr/local/apache-tomcat-9.0.58/webapps/benefits.war' do
  source 'https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/12c/03-DeployApps/files/benefits.war'
  action :create
end
#STOP TOMCAT
execute 'stoptomcat' do
  command 'sh /usr/local/apache-tomcat-9.0.58/bin/shutdown.sh'
end
#Start TOMCAT
execute 'starttomcat' do
  command 'sh /usr/local/apache-tomcat-9.0.58/bin/startup.sh'
end

