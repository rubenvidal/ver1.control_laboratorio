class CreateMediciones < ActiveRecord::Migration
  def self.up
    create_table :mediciones do |t|
      t.string :quemador_id
      t.integer :temperatura
      t.integer :presion
      t.datetime :fecha
      t.timestamps
    end
  end

  def self.down
    drop_table :mediciones
  end
end
