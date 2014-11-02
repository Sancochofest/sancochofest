class ApplicationController < Sinatra::Base

	## Configuration
	configure do
		enable :sessions, :method_override, :logging
		set :logging, Logger::DEBUG
		set :public_folder, File.expand_path('../../public', __FILE__)
		set :views, File.expand_path('../../views', __FILE__)
		set :erb, :layout => :'layouts/default'
	end

	configure :test do
	end

	configure :development do
		register Sinatra::Reloader
		set :show_exceptions, false
	end

	configure :production do
	end

	## Helpers
	helpers Sinatra::ContentFor
	helpers Sinatra::AlMundo::Views::Partials
	helpers Sinatra::AlMundo::Home::StaticPaths

	## Handling Errors
	not_found do
		logger.error "Error 404 - Not Found :: #{request.url}"
		erb :not_found, :layout => :"layouts/error"
	end

	error do
		logger.error "Application Error :: #{env['sinatra.error']}"
		erb :errors, :layout => :"layouts/error"
	end

end
