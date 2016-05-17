class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.belongs_to :search, index: true, foreign_key: true
      t.integer :searchable_id
      t.string :searchable_type

      t.timestamps null: false
    end
  end
end
