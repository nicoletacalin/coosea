class Board < ApplicationRecord
  has_many :lists

  validates :name, presence: true, uniqueness: true

  broadcasts
end
