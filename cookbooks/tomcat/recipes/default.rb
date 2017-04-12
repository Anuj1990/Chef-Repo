#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2010-2016, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Chef::Log.warn('The default tomcat recipe does nothing. See the readme for information on using the tomcat resources')

tomcat_install 'helloworld' do
  version '8.0.36'
  verify_checksum false
  tarball_path '/tmp/apache-tomcat-8.0.36.tar.gz'
end

tomcat_service 'helloworld' do
  action :start
  env_vars [{ 'CATALINA_PID' => '/var/run/tomcat.pid' }]
end
