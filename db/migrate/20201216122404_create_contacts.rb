class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, default: ''
      t.string :phone, null: false, default: ''

      t.timestamps
    end
  end
end
