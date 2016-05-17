class CompanyContact < ActiveRecord::Base
  belongs_to :company

  validates :company, presence: true
  validates :name, presence: true
end
