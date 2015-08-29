require 'celluloid'
require 'faraday'

module Nacjac
  class Projectile
    include Celluloid

    def initialize(target_url)
      @target_url = target_url
      @conn = Faraday.new
    end

    def launch
      start_time = Time.now
      response = @conn.get @target_url
      end_time = Time.now
      end_time - start_time
    rescue
      nil
    end
  end
end
