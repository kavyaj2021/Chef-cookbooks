execute 'updating-apt' do
 command 'sudo apt update -y'
end
package 'apache2' do
  action :install
end
cookbook_file  '/var/www/html/index.html' do
  source 'index.html'
  action :create
end
package 'tomcat9' do
  action :install
end
remote_file '/var/lib/tomcat9/benefits.war' do
  source 'https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/12c/03-DeployApps/files/benefits.war'
  action :create
end
