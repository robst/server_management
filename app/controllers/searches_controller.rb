class SearchesController < ApplicationController
  expose :search  
  def index; end
  def create
    search.perform_search! view_context
  end

  private

  def search_params
    params.require(:search).permit(:phrase)
  end
end
