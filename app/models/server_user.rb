class ServerUser < ActiveRecord::Base
  include Searchable

  belongs_to :server

  validates :server,
    presence: true
  validates :name,
    presence: true

  delegate :company_name, :company, to: :server

end
