class Company < ActiveRecord::Base
  include Searchable
  include Human

  has_many :servers, dependent: :destroy
  has_many :company_contacts, dependent: :destroy

  validates :name, 
    presence: true,
    uniqueness: true

  def company
    self
  end 
end
