class ChangeVideoDescriptionsTypeToText < ActiveRecord::Migration
def up
    change_column :videos, :videodescription, :text
end
def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :videos, :videodescription, :string
end
end
