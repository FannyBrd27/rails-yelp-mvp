class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true, confirmation: { case_sensitive: false }
  validates :content, presence: { message: 'cannot be empty' }
  validates :rating, inclusion: { in: 0..5, message: 'should be between 0 to 5' }, numericality: { only_integer: true }
end


