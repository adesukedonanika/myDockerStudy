# このファイルはアクリケーションコード

require 'webrick'

server = WEBricl::HTTPServer.new(
DocumentRoot: "./",
BindAddress: '0.0.0.0',
Port: 8000
)

server.mont_proc('/') do |req, res|
    res.body = 'hello'
end


server.start