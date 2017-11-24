class Nursemaid < ApplicationRecord
  # Проверки
  validates :name, :experience, :education, :price, presence: true
end
