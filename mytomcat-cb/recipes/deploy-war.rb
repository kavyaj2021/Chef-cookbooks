remote_file '/var/lib/tomcat/webapps/benefits.war' do
    source 'https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/12c/03-DeployApps/files/benefits.war'
    mode '0777'
    action :create
end
