class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments, :force => true do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :articles
  end
end
