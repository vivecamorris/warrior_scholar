class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :videolink
      t.string :pbarimg
      t.string :vidnum
      t.string :ttl
      t.string :subttl

      t.timestamps
    end
  end
end
