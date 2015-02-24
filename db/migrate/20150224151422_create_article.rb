class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description
      t.references :user
      t.references :category
      t.timestamps
    end
  end
end
