class Player < ActiveRecord::Base
  has_many :contracts
  has_many :teams
  belongs_to :agent
end