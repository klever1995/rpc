require 'socket'

socket = TCPSocket.new('localhost', 8080)
puts socket.gets
socket.close
