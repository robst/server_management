class RenamedTitleToNameFromServers < ActiveRecord::Migration
  def change
    rename_column :servers, :title, :name
  end
end
