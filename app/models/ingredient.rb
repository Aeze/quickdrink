class Ingredient < ActiveRecord::Base

  has_and_belongs_to_many :drinks

    default_scope :order => "name ASC"

end
