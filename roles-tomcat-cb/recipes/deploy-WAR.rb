#Deploy WAR
remote_file '/usr/local/apache-tomcat-9.0.58/webapps/benefits.war' do
  source 'https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/12c/03-DeployApps/files/benefits.war'
  action :create
end
