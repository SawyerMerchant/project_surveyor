class Survey < ApplicationRecord
  has_many :question_orders
  has_many :questions, through: :question_orders

end
