class AddHornoIdToQuemadores < ActiveRecord::Migration
  def self.up
    change_table :quemadores do |q|
      q.integer :horno_id
    end
  end

  def self.down
    change_table :quemadores do |q|
      q.remove :horno_id
    end
  end
end
