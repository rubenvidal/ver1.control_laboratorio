class Medicion < ActiveRecord::Base

  belongs_to :quemador
  belongs_to :horno

  validates_presence_of :temperatura, :presion, :fecha

  attr_accessible :quemador_id, :temperatura, :presion, :fecha, :horno_id, :quemador


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

