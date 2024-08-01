class Product < ApplicationRecord
  has_many :variations, dependent: :destroy
  accepts_nested_attributes_for :variations, allow_destroy: true
end
