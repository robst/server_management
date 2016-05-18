module Searchable
  extend ActiveSupport::Concern
  included do
    scope :search, ->(phrase) { where("name LIKE ?", "%#{phrase}%") }
  end
end
