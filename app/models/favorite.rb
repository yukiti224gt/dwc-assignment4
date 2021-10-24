class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  # validates_uniqueness_of :book_id, scope: :user_id
  validates :book_id, uniqueness: { scope: :user_id }
end
