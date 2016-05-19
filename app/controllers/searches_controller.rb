class SearchesController < ApplicationController
  expose :search  
  def index; end
  def create; end

  private

  def search_params
    params.require(:search).permit(:phrase)
  end
end
