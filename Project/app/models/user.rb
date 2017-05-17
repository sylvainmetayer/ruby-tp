class User < ApplicationRecord
  validates :firstname, :lastname, presence: true
end
