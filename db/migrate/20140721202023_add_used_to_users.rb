class AddUsedToUsers < ActiveRecord::Migration
  def change
	add_column :users, :used, :boolean, :default => false
  end
end
