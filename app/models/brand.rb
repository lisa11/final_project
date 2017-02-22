class Brand < ApplicationRecord
  mount_uploader :logo, LogoUploader

  # Direct associations

  has_many   :products

  # Indirect associations

  # Validations

end
