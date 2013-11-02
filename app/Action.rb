require_relative 'Results'
require_relative 'Result'
require_relative 'StoreResult'

class Action
  @results = Results.new(StoreResult.load)

  def self.add(users_processed)
    result = Result.new(users_processed)
    @results.add(result)
    StoreResult.save(@results.list)
  end    
end