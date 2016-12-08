class Subject < ApplicationRecord
	has_many :topics
	accepts_nested_attributes_for :topics
end
