class Gossip < ApplicationRecord
	has_many :tag_lists
	has_many :tags, through: :tag_lists
	belongs_to :user
end
