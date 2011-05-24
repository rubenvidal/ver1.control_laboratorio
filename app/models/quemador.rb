class Quemador < ActiveRecord::Base
  belongs_to :horno
  has_many :mediciones
  validates_presence_of :nombre, :cantidad_mecheros, :posicion
  validates_numericality_of :cantidad_mecheros, :only_integer => true
end

# == Schema Information
#
# Table name: quemadores
#
#  id                :integer         not null, primary key
#  nombre            :string(255)
#  cantidad_mecheros :integer
#  posicion          :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  horno_id          :integer
#

