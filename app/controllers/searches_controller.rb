class SearchesController < ApplicationController
  expose :searches, -> { Search.all }
  expose :search  
  def index; end

  def new; end

  def show
  end

  def create
    search.save
  end

  private

  def search_params
    params.require(:search).permit(:phrase)
  end
end
