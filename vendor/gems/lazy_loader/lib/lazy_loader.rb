require "lazy_loader/version"

module LazyLoading
  class Error < StandardError; end
  # Your code goes here...
  class InfiniteTest
    attr_accessor :id, :model, :no_of_records
    def initialize(id, model, no_of_records)
      @id = id
      @model = model
      @no_of_records = no_of_records
    end
    def generate
      a = MusicAlbum.paginate(:page =>  1, :per_page => 30)
      byebug
      
    end
  end
end