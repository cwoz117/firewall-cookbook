package 'firewalld'

service 'firewalld' do
  action [:start, :enable]
end

execute 'runtime_zone_add' do
  command 'sudo firewall-cmd --zone=work --change-interface=`ls /sys/class/net | grep e`'
end
