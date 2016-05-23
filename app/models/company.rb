class Company < ActiveRecord::Base
  include Searchable

  has_many :servers
  has_many :search_results, as: :searchable

  validates :name, presence: true

  def company
    self
  end 
end
