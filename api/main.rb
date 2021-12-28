require 'bundler/setup'

Bundler.require(:production, :development)

set :server, :puma

Dotenv.load('.env')

use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == 'admin'  and password == 'test'
end

conn = TinyTds::Client.new(username: ENV['DB_USER'], password: ENV['DB_PASS'], host: ENV['DB_HOST'], port: ENV['DB_PORT'], database: ENV['DB_DB'])

puts conn.active?