class Use < ApplicationRecord
  # Direct associations

  belongs_to :favorite,
             :class_name => "Purchase",
             :foreign_key => "purchase_id"

  belongs_to :user

  # Indirect associations

  # Validations

end
