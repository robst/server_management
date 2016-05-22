class Company < ActiveRecord::Base
  has_many :servers
  has_many :search_results, as: :searchable

  validates :name, presence: true

  scope :search, ->(phrase) { where("name LIKE ?", "%#{phrase}%") }

  def company
    self
  end 
end
