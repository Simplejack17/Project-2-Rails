class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_content



      t.references :post, index: true, foreign_key: true
      # IF you use t.references, you don't have to include the index option as it will set indexing up for you
      t.timestamps
    end
  end
end
