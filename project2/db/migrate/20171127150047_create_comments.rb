class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.string :comment_date

      t.references :post, index: true, foreign_key: true

      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
