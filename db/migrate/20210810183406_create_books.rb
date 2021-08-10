class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :author, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :pages

      t.timestamps
    end
  end
end
