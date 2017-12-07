directory '/var/www/html/create-directory-demo/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
file "Create a file" do
  content "<html>This is a placeholder for the home page.</html>"
  group "root"
  mode "0755"
  owner "root"
  path "/var/www/html/create-directory-demo/index.html"
end
cookbook_file '/var/www/html/phpinfo.php' do
  source 'phpinfo.php'
  owner 'www-data:www-data'
  group 'www-data:www-data'
  mode '0755'
  action :create
end
