
namespace :sidekiq do

  desc 'Add pages for parsing'
  task :start_parsing => :environment do
    puts 'Adding task'
    HardWorker.perform_async(ENV['pages'])
    puts 'Task added'
  end
end
