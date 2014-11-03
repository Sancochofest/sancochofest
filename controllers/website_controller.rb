class WebsiteController < ApplicationController
	## sancochofest.co
	get '/' do
		erb :home
	end

	get '/fest-2013' do
		erb :fest_2013
	end

	get '/fest-2014' do
		erb :fest_2014
	end

	get '/programacion-2015' do
		erb :programacion_2015
	end

end
