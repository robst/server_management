class Company < ActiveRecord::Base
  include Searchable
  include Human

  has_many :servers
  has_many :company_contacts
  has_many :search_results, as: :searchable

  validates :name, 
    presence: true,
    uniqueness: true

  def company
    self
  end 
end
