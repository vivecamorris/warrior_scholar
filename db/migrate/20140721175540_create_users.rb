class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :access_code
      t.string :fname
      t.string :lname
      t.integer :zipcode
      t.text :map_comment

      t.timestamps
    end
  end
end
