require 'backburner'

module Adhearsion
  module Beanstalkd
    class Service
      class << self
        def start
          Backburner.configure do |conf|
             conf.beanstalk_url    = config.beanstalk_url
             conf.tube_namespace   = config.tube_namespace
             conf.default_priority = config.default_priority
             conf.respond_timeout  = config.respond_timeout
             conf.on_error         = config.on_error
             conf.max_job_retries  = config.max_job_retries
             conf.retry_delay      = config.retry_delay
             conf.default_queues   = config.default_queues
             conf.logger           = config.logger
             conf.default_worker   = config.default_worke
             conf.primary_queue    = config.primary_queue
             conf.priority_labels  = config.priority_labels
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

