require 'sinatra'
require 'json'

# Servir la página HTML
get '/' do
  send_file 'index.html'
end

# RPC Endpoint
post '/rpc' do
  # Responder con un mensaje
  content_type :json
  { message: "Hello, World!" }.to_json
end

# Configuración del servidor
set :bind, '0.0.0.0'  # Asegura que sea accesible desde otros dispositivos
set :port, 4567
