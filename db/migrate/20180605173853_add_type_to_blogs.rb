class AddTypeToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :type, :string
  end
end
