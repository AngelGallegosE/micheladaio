class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates_numericality_of :price, :less_than_or_equal_to => 99, :message => "El precio debe ser menor a 100"
  belongs_to :brand
end
