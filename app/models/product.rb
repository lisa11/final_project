class Product < ApplicationRecord
  # Direct associations

  belongs_to :brand

  has_many   :favorites

  # Indirect associations

  # Validations

end
