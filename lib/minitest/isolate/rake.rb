require 'isolate'

module Rake
  class IsolateTask < Task
    # isolate then run tests
    def self.define_task *args, &block
      super *args do |t|
        # isolate
        t.isolate_now! &block
        # run tests
        task(:test).invoke
      end
    end

    def isolate_now! &block
      Isolate.now! :path => isolate_path, &block
    end

    def isolate_path
      # HACKY
      name.gsub(':', '/')
    end
  end
end

desc "run all isolated tests"
task 'test:isolate' do
  namespace('test:isolate') do |ns|
    ns.tasks.each{|t| t.invoke}
  end
end

# Isolate.now! then run tests
# block is passed directly to Isolate.now!
def isolate_task *args, &block
  namespace 'test:isolate' do
    desc "setup isolated env and run tests" unless Rake.application.last_description
    Rake::IsolateTask.define_task(*args, &block)
  end
end
