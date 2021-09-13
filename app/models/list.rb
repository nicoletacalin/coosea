class List < ApplicationRecord
  belongs_to :board
  acts_as_list scope: :boards

  has_many :tasks

  validates :name, presence: true

   after_update_commit -> { broadcast_replace_to self }
end
