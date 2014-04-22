class Article < ActiveRecord::Base
	# relationship
	belongs_to :category
	# validation
	validates_presence_of :title, :content

	# scope
	scope :alphabetical, -> {order('title')}
	scope :active, -> {where(active: true)}
end
