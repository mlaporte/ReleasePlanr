class Product < ActiveRecord::Base
  attr_accessible :name

  has_many :releases, :order => "position", :dependent => :delete_all
  has_many :requirements, :dependent => :delete_all
  validates :name, :length     => { :maximum => 50 }, 
                   :uniqueness => true
end
