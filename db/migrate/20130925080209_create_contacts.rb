class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :contact_us

      t.timestamps
    end
  end
end
