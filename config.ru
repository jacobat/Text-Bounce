require 'rubygems'
require 'bundler'
require 'erb'
require 'active_record'

Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'sinatra_application.sqlite3.db'
)

require './my_app'
run MyApp