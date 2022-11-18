class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  # validates :photo, attached: true, content_type: ['photo/jpg', 'photo/jpeg', 'photo/png'],
  #                   size: { less_than: 1.megabytes, message: 'must be smaller than 1mb' }
  # needs the below gem
  # gem 'active_storage_validations'
end
