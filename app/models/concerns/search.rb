class Search
  include ActiveModel::Model

  attr_accessor :phrase, :search_results

  def perform_search! view_context
    @search_results ||= search_models.collect do |search_model|
      collection_presenter_for model_search(search_model, phrase), view_context
    end.flatten
  end

  private

  def model_search model, phrase
    model.constantize.search(phrase)
  end

  def search_models
    %w(Server Company CompanyContact ServerUser)
  end

  def collection_presenter_for collection, view_context
    presenter_collection_class(collection).present_collection collection, view_context 
  end

  def presenter_collection_class collection
    "#{collection.class.to_s.split('::').first}Presenter".constantize
  end
end
