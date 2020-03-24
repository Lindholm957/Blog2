class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
    length: { minimum: 5 }
    validates :slug, uniqueness: true
    
    extend FriendlyId
      friendly_id :title, use: :slugged
end
