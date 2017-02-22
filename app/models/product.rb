class Product < ApplicationRecord
  # Direct associations

  belongs_to :brand

  has_many   :favorites

  # Indirect associations

  has_many   :users,
             :through => :favorites,
             :source => :user

  # Validations

end
