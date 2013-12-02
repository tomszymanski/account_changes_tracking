require_relative 'LoadSettings'
require 'yaml'

class Calc
  attr_reader :elapsed_time,
              :user_processing_rate,
              :completion_duration,
              :completion_time  

  def initialize(completed_users)
    settings = LoadSettings.new
    @elapsed_time = Time.now - settings.start_time
    @user_processing_rate = completed_users / @elapsed_time
    @completion_duration = settings.total_users / @user_processing_rate
    @completion_time = settings.start_time + @completion_duration
  end
end