class Person < ApplicationRecord
    belongs_to :user
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :title, presence: true, length: { maximum: 100 }
    validates :photo, presence: true, format: { with: /\Ahttps?:\/\/.*\z/,
                                                message: 'must be a valid URL' }
    validates :biography, presence: true
end
  