class Item < ApplicationRecord
  enum kind: [ :food, :drink ]

  validates :title, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
