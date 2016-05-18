class CompanyContact < ActiveRecord::Base
  belongs_to :company

  has_many :search_results, as: :searchable

  validates :company, presence: true
  validates :name, presence: true

  scope :search, ->(phrase) { where("name LIKE ?", "%#{phrase}%") }
end
