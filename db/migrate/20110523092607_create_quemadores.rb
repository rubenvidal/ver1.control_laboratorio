class CreateQuemadores < ActiveRecord::Migration
  def self.up
    drop_table :quemadores
    create_table :quemadores do |t|
      t.string :nombre
      t.integer :cantidad_mecheros
      t.string :posicion

      t.timestamps
    end
  end

  def self.down
    drop_table :quemadores
  end
end
