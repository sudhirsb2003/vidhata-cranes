class CreateAboutVidhataCranes < ActiveRecord::Migration
  def change
    create_table :about_vidhata_cranes do |t|
      t.text :about_us

      t.timestamps
    end
  end
end
