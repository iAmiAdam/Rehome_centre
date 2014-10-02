class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :user_id
      t.string :description
      t.integer :colour
      t.integer :breed
      t.integer :age
      t.integer :type
      t.integer :gender
      t.boolean :vaccinated
      t.boolean :neutered

      t.timestamps
    end
  end
end
