class SearchesController < ApplicationController
  def index; end
  def create
    session[:search] = params[:search]
    search.perform_search! view_context
  end

  private

  def search_params
    params.require(:search).permit(:phrase)
  end
end
