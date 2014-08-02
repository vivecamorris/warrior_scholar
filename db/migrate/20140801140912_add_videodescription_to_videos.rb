class AddVideodescriptionToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :videodescription, :string
  end
end
