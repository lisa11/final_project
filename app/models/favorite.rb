class Favorite < ApplicationRecord
  # Direct associations

  has_many   :usages,
             :dependent => :destroy

  belongs_to :user

  belongs_to :product

  # Indirect associations

  # Validations

end
