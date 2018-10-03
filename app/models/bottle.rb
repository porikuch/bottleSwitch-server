class Bottle < ApplicationRecord
  has_one :user, primary_key: :created_user_id, foreign_key: :id
  has_many :have_bottles
end
