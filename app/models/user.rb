class User < ApplicationRecord
    # Validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :age, presence: true, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 65 }
  
    # Virtual attribute
    def full_name
      "#{first_name} #{last_name}"
    end
end
 