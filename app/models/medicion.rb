class Medicion < ActiveRecord::Base
  attr_accessible :quemador_id, :temperatura, :presion, :fecha
  belongs_to :quemador
  validates_presence_of :temperatura, :presion, :fecha
end


# == Schema Information
#
# Table name: mediciones
#
#  id          :integer         not null, primary key
#  quemador_id :string(255)
#  temperatura :integer
#  presion     :integer
#  fecha       :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

