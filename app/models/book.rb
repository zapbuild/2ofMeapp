class Book < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	belongs_to :user
	has_many :sales

	

	validates_numericality_of :price,
	greater_than: 49, message: "must be at least 50 cents"
end
