class RenameColumnAtCompanyContacts < ActiveRecord::Migration
  def change
    rename_column :company_contacts, :telefonnumber, :telephone_number
  end
end
