require 'yaml/store'
require_relative 'Result'
require_relative 'LoadSettings'

class StoreResult
  @settings = LoadSettings.new

  def self.save(results_to_save)
    store = YAML::Store.new @settings.results_file

    store.transaction do
      store['results'] = results_to_save
    end
  end

  def self.load
    storage_file_contents = []

    hash_of_results = YAML.load_file(@settings.results_file)
    hash_of_results['results'].each do |result|
      storage_file_contents << Result.new(result.users_processed, 
                                          result.time)
    end
    storage_file_contents
  end
end