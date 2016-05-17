class Company < ActiveRecord::Base
  has_many :servers

  validates :name, presence: true
end
