# == Schema Information
#
# Table name: cards
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  twitter_handle :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Card < ActiveRecord::Base

  attr_accessible :name, :twitter_handle

  # may remove twitter_handle validation once we auth more users
  validates_presence_of :name, :twitter_handle
  has_many :boards, through: :board_cards

end
