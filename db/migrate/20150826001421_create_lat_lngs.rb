class CreateLatLngs < ActiveRecord::Migration
  def change
    create_table :lat_lngs do |t|
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
