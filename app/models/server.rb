class Server < ActiveRecord::Base
  include Searchable

  belongs_to :company

  has_many :server_users, dependent: :destroy

  validates :name,
    presence: true
  validates :ip_address,
    presence: true,
    uniqueness: true
  validates :company,
    presence: true

  delegate :name, to: :company, prefix: true

end
