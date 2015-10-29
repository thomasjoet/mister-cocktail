class RemoveQuantiteFromDoses < ActiveRecord::Migration
  def change
    remove_column :doses, :quantite, :integer
  end
end
