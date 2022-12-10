# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*"

    resource '/login',
      :headers => :any,
      :methods => [:post],
      expose: [:Authorization, 'Content-Type', 'content-type']

    resource '/logout',
      :headers => :any,
      :methods => [:delete],
      expose: [:Authorization, 'Content-Type', 'content-type']

    resource "*",
      :headers => :any,
      :methods => [:get, :post, :put, :patch, :delete, :options, :head],
      expose: [:Authorization, 'Content-Type', 'content-type']
  end
end
