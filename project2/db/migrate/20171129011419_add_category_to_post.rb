class AddCategoryToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :category, :string
  end
end
