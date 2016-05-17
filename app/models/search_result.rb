class SearchResult < ActiveRecord::Base
  belongs_to :search
  belongs_to :searchable, polymorphic: true
end
