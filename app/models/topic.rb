class Topic < ApplicationRecord
  belongs_to :subject
  has_many :sub_scope
  validates_presence_of :name
end
