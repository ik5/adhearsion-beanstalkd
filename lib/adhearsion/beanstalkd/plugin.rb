require 'adhearsion/beanstalkd/service'

module Adhearsion
  module Beanstalkd
    class Plugin < Adhearsion::Plugin
      PRIORITY_LABELS = { :high => 0, :medium => 100, :low => 200  }
      config :adhearsion_beanstalkd do
        beanstalk_url    'beanstalk://localhost',     desc: 'The address(es) of beanstalkd server(s)'
        tube_namespace   'adhearsion.worker.queue',   desc: 'Namespace prefix for every queue'
        default_priority 65536,                       desc: 'Default priority for job'
        respond_timeout  120,                         desc: 'Default job timeout'
        on_error         nil,                         desc: 'Error handler'
        max_job_retries  5,                           desc: 'Max job retries'
        retry_delay      3,                           desc: 'Retry delay in seconds'
        default_queues   [],                          desc: 'Default queues'
        logger           Adhearsion::Logger           desc: 'Logger for the actions'
        default_worker   Backburner::Workers::Simple, desc: 'Default worker class'
        primary_queue    'adhearsion-jobs',           desc: 'The general queue'
        priority_labels  PRIORITY_LABELS,             desc: 'priority labels'
      end

      init :adhearsion_beanstalkd do
        # TODO: Adding init code here
      end

    end
  end
end
