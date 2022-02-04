#Copying Tomcat-users.xml
cookbook_file '/usr/local/apache-tomcat-9.0.58/conf/tomcat-users.xml' do
  source 'tomcat-users.xml'
  action :create
end
#Copying context.xml
cookbook_file '/usr/local/apache-tomcat-9.0.58/webapps/manager/META-INF/context.xml' do
  source 'context.xml'
  action :create
end
