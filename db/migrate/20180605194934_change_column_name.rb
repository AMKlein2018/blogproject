class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :blogs, :type, :sport
  end
end
