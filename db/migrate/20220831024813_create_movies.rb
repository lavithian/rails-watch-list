class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :power_url
      t.integer :rating

      t.timestamps
    end
  end
end