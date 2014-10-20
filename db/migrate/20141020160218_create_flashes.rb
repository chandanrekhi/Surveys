class CreateFlashes < ActiveRecord::Migration
  def change
    create_table :flashes do |t|
      t.string :name
      t.integer :age
      t.text :query

      t.timestamps
    end
  end
end
