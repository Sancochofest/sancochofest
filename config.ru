require 'sinatra'
require 'sinatra/base'
require 'sinatra/content_for'
require 'sinatra/reloader'

require_relative "#{ENV['RACK_ENV']}-properties.rb"
require_relative 'dependencies.rb'

I18n.load_path = Dir[File.join('config/locales/**/*.{rb,yml}').to_s]
I18n.enforce_available_locales = false

#require 'sass/plugin/rack'
#Sass::Plugin.options[:style] = :compressed
#Sass::Plugin.options[:cache] = false
#Sass::Plugin.options[:full_exception] = true
#Sass::Plugin.options[:template_location] = 'public/scss'
#Sass::Plugin.options[:css_location] = 'public/css'
#use Sass::Plugin::Rack

map('/') { run WebsiteController }
map('/service') { run ServicesController }
map('/task') { run TasksController }
