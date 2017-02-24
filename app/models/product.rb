class Product < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :class_name => "Purchase"

  # Indirect associations

  has_many   :users,
             :through => :favorites,
             :source => :user

  # Validations

end
