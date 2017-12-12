directory '/var/www/html/api/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory '/var/www/html/admin/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory '/opt/Kroo' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
cookbook_file '/var/www/html/api/' do
  source '.htaccess'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

cookbook_file "/etc/apache2/sites-available/admin.thekroo.com.conf" do
  source "virtual_hosts/admin.thekroo.com.conf"
  mode "0644"
end
cookbook_file "/etc/apache2/sites-available/api.thekroo.com.conf" do
  source "virtual_hosts/api.thekroo.com.conf"
  mode "0644"
end

execute "enable-sites" do
  command "a2ensite api.thekroo.com.conf"
  notifies :restart, "service[apache2]"
end
execute "enable-sites" do
  command "a2ensite admin.thekroo.com.conf"
  notifies :restart, "service[apache2]"
end
