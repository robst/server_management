class Server < ActiveRecord::Base
  include Searchable

  belongs_to :company

  has_many :server_users
  has_many :search_results, as: :searchable

  validates :name, presence: true
  validates :ip_address, presence: true
  validates :company, presence: true

  delegate :name, to: :company, prefix: true

end
