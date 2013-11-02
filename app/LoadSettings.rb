require 'yaml'

class LoadSettings
  attr_reader :total_users, :start_time, :results_file

  def initialize
      settings = YAML.load_file('config/settings.yml')

      @total_users = settings['total_users']
      @start_time = Time.new(settings['start_time'])
      @results_file = settings['results_file']
  end  
end