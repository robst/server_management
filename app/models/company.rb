class Company < ActiveRecord::Base
  include Searchable
  include Human

  has_many :servers, dependent: :destroy, inverse_of: :company
  has_many :company_contacts, dependent: :destroy, inverse_of: :company

  validates :name, 
    presence: true,
    uniqueness: true

  accepts_nested_attributes_for :servers

  def company
    self
  end 
end
