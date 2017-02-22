class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :product

  # Indirect associations

  # Validations

end
