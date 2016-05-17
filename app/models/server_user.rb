class ServerUser < ActiveRecord::Base
  belongs_to :server

  validates :server, presence: true
  validates :name, presence: true
end
