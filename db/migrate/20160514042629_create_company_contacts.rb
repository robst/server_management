class CreateCompanyContacts < ActiveRecord::Migration
  def change
    create_table :company_contacts do |t|
      t.string :name
      t.string :telefonnumber
      t.string :mail
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
