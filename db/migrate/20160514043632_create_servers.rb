class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :title
      t.string :ip_address
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
