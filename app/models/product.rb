class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates_numericality_of :price, :less_than_or_equal_to => 100, :message => "El precio no puede ser mayor a 100"
  belongs_to :brand
end
