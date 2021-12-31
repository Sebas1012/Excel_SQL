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
  conn.execute("SELECT * FROM test_2").each.to_json
end

post '/test' do
  data = JSON.parse request.body.read

  code = conn.execute("INSERT INTO test_2(tipo_doc, documento, anio, mes, tipo_atencion, medico, dx, descripcion_dx, lateralidad, av, tipo_av, emc, av_lb, observaciones, eps)
                        VALUES('#{data['tipo_doc']}', '#{data['documento']}', '#{data['anio']}', '#{data['mes']}', '#{data['tipo_atencion']}', 
                                '#{data['medico']}', '#{data['dx']}', '#{data['descripcion_dx']}', '#{data['lateralidad']}', '#{data['av']}', '#{data['tipo_av']}',
                                '#{data['emc']}', '#{data['av_lb']}', '#{data['observaciones']}', '#{data['eps']}')")

end