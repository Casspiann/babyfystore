class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :email
      t.string :telephone
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
