class Search
  include ActiveModel::Model

  attr_accessor :phrase, :search_results

  def perform_search! view_context
    @search_results ||= search_models.collect do |search_model|
      collection_presenter_for search_model.constantize.search(phrase)
    end.flatten
  end

  private

  def search_models
    %w(Server Company CompanyContact ServerUser)
  end

  def collection_presenter_for collection
    presenter_collection_class(collection).present_collection collection 
  end

  def presenter_collection_class collection
    "#{collection.class.to_s.split('::').first}Presenter".constantize
  end
end
