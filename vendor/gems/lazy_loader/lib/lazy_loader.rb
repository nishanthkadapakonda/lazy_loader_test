require "lazy_loader/version"
require 'will_paginate'



module LazyLoader
  class Error < StandardError; end
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'gon'
  end
  # Your code goes hre...
  class InfiniteTest
    attr_accessor :id, :model, :no_of_records, :page_no
    def initialize(id, model, no_of_records, page_num)
      @id = id
      @model = model
      @no_of_records = no_of_records
      @page_no = page_num
    end

    def generate
      self.model.constantize.paginate(:page => @page_no || 1  , :per_page => @no_of_records)
    end
  end
end
  