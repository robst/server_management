class Server < ActiveRecord::Base
  belongs_to :company

  validates :title, presence: true
  validates :ip_address, presence: true
  validates :company, presence: true

end
