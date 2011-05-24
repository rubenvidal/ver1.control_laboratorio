class AddHornoIdToMediciones < ActiveRecord::Migration
  def self.up
    add_column :mediciones, :horno_id, :integer
  end

  def self.down
    remove_column :mediciones, :horno_id
  end
end
