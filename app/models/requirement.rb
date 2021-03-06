class Requirement < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :product
  belongs_to :release
  belongs_to :user

  validates :product, :presence   => true
  validates :name, :uniqueness => { :scope => :product_id },
                   :presence   => true,
                   :length     => { :maximum => 100 }
  validates :description, :length => { :maximum => 5000 }

end
