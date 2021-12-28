require 'bundler/setup'

Bundler.require(:production, :development)

set :server, :puma

Dotenv.load('.env')

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == 'admin'  and password == 'test'
end

conn = TinyTds::Client.new(username: ENV['DB_USER'], password: ENV['DB_PASS'], host: ENV['DB_HOST'], port: ENV['DB_PORT'], database: ENV['DB_DB'])

before do
  content_type :json
end

get '/hello' do
  'Hello'
end

post '/test' do
  data = JSON.parse request.body.read

  code = conn.execute("INSERT INTO test VALUES 
                      ('#{data['tipo_doc']}', '#{data['documento']}', '#{data['fecha_atencion']}', '#{data['tipo_atencion']}', '#{data['medico']}', '#{data['dx']}', 
                      '#{data['descripcion_dx']}', '#{data['lateralidad']}', '#{data['av']}', '#{data['tipo_av']}', '#{data['emc']}', '#{data['av_lb']}', 
                      '#{data['observaciones']}', '#{data['eps']}')")
end