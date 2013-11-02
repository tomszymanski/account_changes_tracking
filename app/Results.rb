class Results
  def initialize(stored_results)
    @results = stored_results
  end
  def add(new_result)
    @results << new_result
  end
  def list
    @results
  end
end