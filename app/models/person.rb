class Person < ApplicationRecord
  has_many :achievements

  attr_accessor :pangalan

  def can_see
  end

  private

  def cannot_see
  end
end
