class Question < ApplicationRecord
  has_many :question_orders
  has_many :surveys, through: :question_orders
end
