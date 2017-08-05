class ChangeVideoUrlColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :videos, :url, :embbed_code
  end
end
