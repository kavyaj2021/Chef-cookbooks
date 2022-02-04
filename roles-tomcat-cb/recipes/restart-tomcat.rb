#STOP TOMCAT
execute 'stoptomcat' do
  command 'sh /usr/local/apache-tomcat-9.0.58/bin/shutdown.sh'
end
#Start TOMCAT
execute 'starttomcat' do
  command 'sh /usr/local/apache-tomcat-9.0.58/bin/startup.sh'
end
 
