class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  has_and_belongs_to_many :tags

  def tags_csv
    tags.map(&:name).join(", ")
  end
end
