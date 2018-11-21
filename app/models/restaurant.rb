class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true, confirmation: { case_sensitive: false }
  validates :name, :address, :category, presence: { message: 'cannot be empty' }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: '%{value} is not in the R.S.P.C.A list' },
    confirmation: { case_sensitive: false }
end
