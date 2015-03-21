require "socket"

class Device
  def self.send_commands(ip, port, *commands)
    device = Device.new(ip, port)
    commands.each do |command|
      device.send_command(command)
    end
    device.close
  end

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

  def close
    @socket.close
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
