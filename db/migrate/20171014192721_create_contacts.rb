class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :note
      t.boolean :active, nul: false, default: true
      t.timestamps
    end

    # validating the repetition of a column table.
    add_index :contacts, :email, unique: true
    # can also use this to speed up retreival of data
  end
end
