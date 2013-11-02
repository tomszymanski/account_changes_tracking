class Result
  attr_reader :users_processed, :time
  def initialize(users_processed, time = Time.now)
    @users_processed = users_processed
    @time = time
  end
end