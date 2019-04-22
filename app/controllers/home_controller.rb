class HomeController < ApplicationController
  def index
    @records = LazyLoader::InfiniteTest.new("lazy_loader_infinite", "MusicAlbum", 20, params[:page]).generate
  end
end
