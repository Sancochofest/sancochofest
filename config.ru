require 'sinatra'
require 'sinatra/base'
require 'sinatra/content_for'
require 'sinatra/reloader'

require_relative 'dependencies.rb'

#require 'sass/plugin/rack'
#Sass::Plugin.options[:style] = :compressed
#Sass::Plugin.options[:cache] = false
#Sass::Plugin.options[:full_exception] = true
#Sass::Plugin.options[:template_location] = 'public/scss'
#Sass::Plugin.options[:css_location] = 'public/css'
#use Sass::Plugin::Rack

map('/') { run WebsiteController }
