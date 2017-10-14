class Contact < ApplicationRecord

  validates :name, :email, :active, presence: true

end
