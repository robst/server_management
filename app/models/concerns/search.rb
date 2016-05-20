class Search
  include ActiveModel::Model

  attr_accessor :phrase

  def search_results
    %w(Server Company CompanyContact ServerUser).collect do |search_model|
      search_model.constantize.search phrase
    end.flatten
  end
end
