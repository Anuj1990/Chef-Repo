%w(
  apache2
  php
  expect
).each do |pkg|
  package pkg do
    action :install
  end
end

group 'www' do
  action :create
end
