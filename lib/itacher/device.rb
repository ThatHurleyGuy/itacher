require "socket"

class Device
  def initialize(ip, port)
    @socket = TCPSocket.new(ip, port)
  end

  def send_command(command)
    write(command)
    read
  end

  def learn_command
    send_command("get_IRL\r")
    command = self.read
    send_command("stop_IRL\r")
    command
  end

  private
  def write(command)
    @socket << command
  end

  def read
    while buf = (@socket.readpartial(4096) rescue nil)
      (data||="") << buf
      return data if data.end_with?("\r") || data.end_with?("\r\n")
    end
  end
end
