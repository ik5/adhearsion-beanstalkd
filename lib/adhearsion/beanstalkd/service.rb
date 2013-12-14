require 'backburner'

module Adhearsion
  module Beanstalkd
    class Service
      class << self
        def start
          Backburner.configure do |conf|

          end

          Backburner.work
        end
        
        def config
          @config ||= Adhearsion.config[:adhearsion_beanstalkd]
        end

      end

    end

  end
end

