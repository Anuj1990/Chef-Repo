service 'apache2' do
  action [:start,:enable]
end

group 'www' do
  action :modify
  members 'ubuntu'
  append true
end

bash 'var-www-perms' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  chown -R root:www /var/www
  chmod 2775 /var/www
  find /var/www -type d -exec chmod 2775 {} \\;
  find /var/www -type f -exec chmod 0664 {} \\;
  EOH
end
