class Topic < ApplicationRecord
  belongs_to :subject
  validates_presence_of :name
end
