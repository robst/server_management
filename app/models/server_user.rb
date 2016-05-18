class ServerUser < ActiveRecord::Base
  include Searchable

  belongs_to :server

  has_many :search_results, as: :searchable

  validates :server, presence: true
  validates :name, presence: true

end
