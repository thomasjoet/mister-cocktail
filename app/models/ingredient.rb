class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :doses, dependent: :restrict_with_exception
end
