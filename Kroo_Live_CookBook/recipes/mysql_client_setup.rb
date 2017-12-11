execute "mysql-client" do
  command "apt-get install mysql-client-5.7 -y"
  action :run
end

