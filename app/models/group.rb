class Group < ApplicationRecord
  has_many :numbers, dependent: :destroy
  validates :title, presence: true
  validates :operation, presence: true
  validates :digits, presence: true
  validates :timer, presence: true
  validates :total, presence: true
end
