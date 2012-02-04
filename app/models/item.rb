class Item < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :tags
end