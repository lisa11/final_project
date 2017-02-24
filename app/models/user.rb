class User < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :class_name => "Purchase",
             :dependent => :destroy

  has_many   :uses,
             :dependent => :destroy

  # Indirect associations

  has_many   :products,
             :through => :favorites,
             :source => :product

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
