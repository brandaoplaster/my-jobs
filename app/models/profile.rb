class Profile < ApplicationRecord
  belongs_to :Portfolio

  has_one_attached :photo

  validates :title, :name, presence: true
end
