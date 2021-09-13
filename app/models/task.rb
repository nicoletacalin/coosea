class Task < ApplicationRecord
  belongs_to :list
  acts_as_list scope: :list

  validates :name, presence: true
  after_update_commit -> { broadcast_replace_to self }
end
