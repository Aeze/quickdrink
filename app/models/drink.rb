class Drink < ActiveRecord::Base

  has_and_belongs_to_many :ingredients, :order => "name ASC"

  default_scope :order => "name ASC"


  validates_presence_of :name
  validates_uniqueness_of :name
end
