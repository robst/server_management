class SearchesController < ApplicationController
  expose :searches, -> { Search.all }
  expose :search  
  def index; end

  def new; end

  def show
  end

  def create
  end
end
