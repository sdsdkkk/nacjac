module Nacjac
  class Cannon
    def initialize(target_url, thread_num, duration)
      @target_url    = target_url
      @thread_num    = thread_num
      @duration      = duration
      @request_times = []
    end

    def blast
      end_time = Time.now + @duration
      while (Time.now < end_time)
        @request_times << shoot
      end
    end

    def report
      @request_times.flatten!
      total = @request_times.count
      failed = total - @request_times.compact.count
      total_time = @request_times.compact.inject(0){|a, b| a + b}
      puts "Total Requests   : #{total}"
      puts "Failed Requests  : #{failed}"
      puts "Average Time     : #{total_time/total}"
    end

    private
    def shoot
      futures = []
      (1..@thread_num).each do |t|
        @projectile = Projectile.new(@target_url)
        futures << @projectile.future.launch
      end
      futures.map(&:value)
    end
  end
end
