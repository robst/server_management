class CreateServerUsers < ActiveRecord::Migration
  def change
    create_table :server_users do |t|
      t.string :name
      t.string :password
      t.belongs_to :server, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
