class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :subject, presence: true, length: {minimum: 5}
	validates :description,  presence: true
end
