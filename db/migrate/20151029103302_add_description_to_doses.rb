class AddDescriptionToDoses < ActiveRecord::Migration
  def change
    add_column :doses, :description, :string
  end
end
