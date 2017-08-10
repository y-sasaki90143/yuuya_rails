class Person < ApplicationRecord
    validates :name, presence: {message: 'は、必須です'}
	validates :age, numericality: {message: 'は、数字で入力してください'}
end
