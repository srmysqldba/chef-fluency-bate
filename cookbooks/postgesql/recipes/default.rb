#
# Cookbook:: postgesql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

exucute 'postgresql-init' do
	command 'postgresql-setup initdb'
	actiopn :nothing
end

service 'postgresql' do
	action[:enable, :start]
end
