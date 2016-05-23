class CompanyContact < ActiveRecord::Base
  include Searchable

  belongs_to :company

  has_many :search_results, as: :searchable

  validates :company, presence: true
  validates :name, presence: true

  delegate :name, to: :server, prefix: true
  delegate :name, to: :company, prefix: true

end
