class Company < ActiveRecord::Base
  has_many :servers
  has_many :search_results, as: :searchable

  validates :name, presence: true
end
