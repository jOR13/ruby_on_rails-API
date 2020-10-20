class Dbmodel < ApplicationRecord
    validates :nombre, presence: true
    validates :email, presence: true
    validates :password, presence: true
end
