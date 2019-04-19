class HomeController < ApplicationController
  def index
    @records = LazyLoading::InfiniteTest.new("lazy_loader_infinite", "MusicAlbum", 10).generate
    byebug
  end
end
