class CreatePrograms < ActiveRecord::Migration[7.1]
  def change
    create_table :programs do |t|
      t.decimal :price
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
