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

get '/lewis' do
  conn.execute("SELECT * FROM test").each.to_json
end

post '/test' do
  data = JSON.parse request.body.read

  # code = conn.execute("INSERT INTO test VALUES 
  #                     ('#{data['tipo_doc'].to_s}', '#{data['documento'].to_s}', '#{data['tipo_atencion'].to_s}', '#{data['medico'].to_s}', '#{data['dx'].to_s}', 
  #                     '#{data['descripcion_dx'].to_s}', '#{data['lateralidad'].to_s}', '#{data['av'].to_s}', '#{data['tipo_av'].to_s}', '#{data['emc'].to_s}', 
  #                     '#{data['av_lb']}', '#{data['observaciones'].to_s}', '#{data['eps'].to_s}'), '#{data['anio'].to_s}', '#{data['mes'].to_s}'")

  data
  # conn.close
end