class Tag < ApplicationRecord
	has_many :tag_lists
	has_many :gossips, through: :tag_lists
end
