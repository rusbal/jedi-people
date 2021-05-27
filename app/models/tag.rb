class Tag < ApplicationRecord
  validates :name, presence: true

  has_and_belongs_to_many :posts

  class << self
    def maintain
      all.each do |tag|
        tag.posts.count == 0 && tag.delete
      end
    end
  end
end
