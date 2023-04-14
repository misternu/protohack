require 'socket'            

server = TCPServer.new 4242
loop do
  Thread.start(server.accept) do |client|
    p client
    p data = client.gets
    client.puts(data)
    client.close
  end
end
