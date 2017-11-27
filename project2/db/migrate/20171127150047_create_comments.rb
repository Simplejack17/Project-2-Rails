class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.string :username
      t.string :comment_date
      t.references :post, index: true, foreign_key: true
    end
  end
end
