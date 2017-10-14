class Contact < ApplicationRecord

  validates :name, :email, :active, presence: true
  validates :email, uniqueness: true

end
