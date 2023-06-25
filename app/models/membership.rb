class Membership < ApplicationRecord
  validates :client_id, presence: true, uniqueness: {scope: :gym_id}
  belongs_to :client
  belongs_to :gym
end
