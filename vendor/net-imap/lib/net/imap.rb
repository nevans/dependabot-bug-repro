# frozen_string_literal: true

require "socket"
require "monitor"
require 'net/protocol'
begin
  require "openssl"
rescue LoadError
end

module Net
  class IMAP < Protocol
    VERSION = "0.3.3"
    include MonitorMixin
    if defined?(OpenSSL::SSL)
      include OpenSSL
      include SSL
    end
  end
end
