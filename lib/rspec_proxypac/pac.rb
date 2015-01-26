require 'rspec_proxypac'
require 'pac'

# Easily test your proxy.pac with RSpec.
module RspecProxypac
  # Utility class
  class Pac
    @pacs = {}
    class << self
      attr_accessor :pacs
    end
    def self.pac(pacfile)
      # cache pacfile
      pacs[pacfile] ||= PAC.load(pacfile)
    end
  end
end
