class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.string :password_digest
      t.integer :type
      t.integer :number
      t.string :location
      t.string :remember_token, unique: true
      
      t.timestamps
    end
  end
end
