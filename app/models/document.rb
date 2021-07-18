class Document < ApplicationRecord
  validates :name, presence: true
  has_one_attached :attachment
  acts_as_taggable_on :tag
end
