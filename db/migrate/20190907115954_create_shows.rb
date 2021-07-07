class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name 
      t.string :network 
      t.integer :day 
      t.float :rating
      t.datetime :created
      t.datetime :updated
    end
  end
end
