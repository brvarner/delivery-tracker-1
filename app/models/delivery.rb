# == Schema Information
#
# Table name: deliveries
#
#  id                    :integer          not null, primary key
#  arrived               :boolean
#  description           :string
#  details               :string
#  supposed_to_arrive_on :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#
class Delivery < ApplicationRecord
  belongs_to(:user)

  def self.active
    where(arrived: false)
  end

  def self.received
    where(arrived: true)
  end
    
end
