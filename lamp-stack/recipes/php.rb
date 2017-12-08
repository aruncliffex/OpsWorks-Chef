package "php7.0" do
  action :install
end

package "php-pear" do
  action :install
end

package "php-mysql" do
  action :install
end

execute "chownlog" do
  command "chown www-data /var/log/php"
  action :nothing
end

directory "/var/log/php" do
  action :create
  notifies :run, "execute[chownlog]"
end

execute "libapache2" do
  command "apt-get libapache2-mod-php7.0 -y"
  action :run
end
~     
