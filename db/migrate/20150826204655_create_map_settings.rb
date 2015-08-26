class CreateMapSettings < ActiveRecord::Migration
  def change
    create_table :map_settings do |t|
      t.string :hashtag
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
