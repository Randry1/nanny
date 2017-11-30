class Nursemaid < ApplicationRecord
  #Монтируем аплодер для картинов гем каревариер
  mount_uploader :image, ImageUploader
  # Проверки
  validates :name, :experience, :education, :price, presence: true
end
