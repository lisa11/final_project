class Purchase < ApplicationRecord
  # Direct associations

  has_many   :uses,
             :dependent => :destroy

  belongs_to :user

  belongs_to :product

  # Indirect associations

  # Validations

end
