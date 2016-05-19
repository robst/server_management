class DropTableSearches < ActiveRecord::Migration
  def change
    drop_table :searches
    drop_table :search_results
  end
end
