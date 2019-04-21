require "lazy_loader/version"
require 'will_paginate'

module LazyLoader
  class Error < StandardError; end
  class Engine < ::Rails::Engine; end
  # Your code goes hre...
  class InfiniteTest
    attr_accessor :id, :model, :no_of_records
    def initialize(id, model, no_of_records)
      @id = id
      @model = model
      @no_of_records = no_of_records
    end
    def generate
      self.model.constantize.paginate(:page =>  1, :per_page => @no_of_records)
    end
  end
end